import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  CreateOrderGQL,
  DispatcherCalculateFareQuery,
  CreateRiderGQL,
  ServicesListGQL,
  CreateServiceGQL,
  ServicePaymentMethod,
} from '../../../../../generated/graphql';
import { firstValueFrom, map, Observable, timeout } from 'rxjs';
import { DispatcherService } from '../dispatcher.service';
import { NzMessageService } from 'ng-zorro-antd/message';
import { DispatcherStateService } from '../dispatcher-state.service';

@Component({
  standalone: false,
  selector: 'app-dispatcher-service-select',
  templateUrl: './dispatcher-service-select.component.html',
  styles: [`
    .service-card {
      border: 2px solid transparent;
      transition: all 0.3s ease;
    }

    .service-card:hover {
      border-color: #1890ff;
      transform: translateY(-2px);
      box-shadow: 0 8px 25px rgba(24, 144, 255, 0.15);
    }

    .service-card .ant-card-body {
      position: relative;
      overflow: hidden;
    }

    .service-card:hover .ant-card-body::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: linear-gradient(135deg, rgba(24, 144, 255, 0.05) 0%, rgba(24, 144, 255, 0.02) 100%);
      pointer-events: none;
    }
  `],
})
export class DispatcherServiceSelectComponent implements OnInit {
  query?: Observable<ApolloQueryResult<DispatcherCalculateFareQuery>>;
  time: Date = new Date();
  isCreatingOrder = false;
  selectedService: any = null;

  // Debug mode - disabled for production
  debugMode = false;

  // Remove all logic related to createBasicServiceInDatabase and fallback/mock services
  // Only use services loaded from the database

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private dispatcherService: DispatcherService,
    private createOrderMutation: CreateOrderGQL,
    private createRiderMutation: CreateRiderGQL,
    private servicesListGQL: ServicesListGQL,
    private createServiceGQL: CreateServiceGQL,
    private messageService: NzMessageService,
    private dispatcherState: DispatcherStateService,
  ) {}

  ngOnInit(): void {
    this.query = this.route.data.pipe(map((data) => data.services));
    this.loadAvailableServices();
    // Restore state if available
    const state = this.dispatcherState.getAll();
    if (state.selectedService) {
      this.selectedService = state.selectedService;
    }
    // Optionally restore other state as needed
  }

  async loadAvailableServices() {
    try {
      console.log('Loading available services from database...');
      const result = await firstValueFrom(this.servicesListGQL.fetch());

      if (result.data?.serviceCategories && result.data.serviceCategories.length > 0) {
        console.log('Available services from database:', result.data.serviceCategories);

        // Find the first category with services
        let servicesFound = false;
        for (const category of result.data.serviceCategories) {
          if (category.services && category.services.length > 0) {
            this.selectedService = {
              name: category.name || 'Available Services',
              services: category.services.map((service, index) => ({
                id: service.id,
                name: service.name || `Service ${index + 1}`,
                cost: 15.50 + (index * 7) // Generate different prices
              }))
            };
            servicesFound = true;
            console.log('Updated selected service with real IDs:', this.selectedService);
            this.messageService.success(`Loaded ${category.services.length} services from database`);
            break;
          }
        }

        if (!servicesFound) {
          console.warn('No services found in any category');
          this.messageService.warning('No services found in database. Please ensure services are added.');
        }
      } else {
        console.warn('No service categories found in database');
        this.messageService.warning('No service categories found in database. Please ensure services are added.');
      }
    } catch (error) {
      console.error('Failed to load available services:', error);
      this.messageService.warning('Failed to load services from database. Please ensure services are added.');
    }
  }

  async selectService(service: any) {
    try {
      this.isCreatingOrder = true;
      this.messageService.loading('Creating booking...', { nzDuration: 0 });
      this.dispatcherState.set('selectedService', service);
      const state = this.dispatcherState.getAll();
      const riderId = state.riderId;
      const guestPhoneNumber = state.guestPhoneNumber;
      const guestPhoneCountryCode = state.guestPhoneCountryCode;
      const points = state.points;
      if (!points || points.length < 2) {
        this.messageService.remove();
        this.messageService.error('Please select both pickup and destination locations.');
        this.isCreatingOrder = false;
        return;
      }
      if (!service.id) {
        this.messageService.remove();
        this.messageService.error('Invalid service selected. Please try again.');
        this.isCreatingOrder = false;
        return;
      }
      let finalRiderId = riderId;
      if (!riderId && guestPhoneNumber) {
        this.messageService.info('Processing guest booking request...');
        try {
          const guestRiderResult = await firstValueFrom(
            this.createRiderMutation.mutate({
              input: {
                mobileNumber: `${guestPhoneCountryCode}${guestPhoneNumber}`,
                firstName: 'Guest',
                lastName: 'Booking',
              }
            })
          );
          finalRiderId = guestRiderResult.data?.createOneRider?.id;
          if (!finalRiderId) {
            this.messageService.remove();
            this.messageService.error('Failed to create guest rider. Please try again.');
            this.isCreatingOrder = false;
            return;
          }
          this.dispatcherState.set('riderId', finalRiderId);
        } catch (guestError: any) {
          this.messageService.remove();
          let errorMessage = 'Failed to create guest rider. Please try again.';
          if (guestError.graphQLErrors?.length > 0) {
            errorMessage = `Server error: ${guestError.graphQLErrors[0].message}`;
          } else if (guestError.message) {
            errorMessage = guestError.message;
          }
          this.messageService.error(errorMessage);
          this.isCreatingOrder = false;
          return;
        }
      }
      if (!finalRiderId) {
        this.messageService.remove();
        this.messageService.error('No passenger information found. Please go back and select a passenger.');
        this.isCreatingOrder = false;
        return;
      }
      // Create the order using the current mutation signature
      const orderResult = await firstValueFrom(
        this.createOrderMutation.mutate({
          riderId: finalRiderId,
          points: points.map(p => p.location),
          addresses: points.map(p => p.address),
          serviceId: service.id,
          intervalMinutes: 0
        })
      );
      if (orderResult.data?.createOrder?.id) {
        const realOrderId = orderResult.data.createOrder.id;
        this.dispatcherState.set('orderId', realOrderId);
        this.messageService.remove();
        this.messageService.success(`Booking created successfully! Searching for available drivers...`);
        await this.router.navigate(['../looking'], {
          relativeTo: this.route,
          queryParams: {
            requestId: realOrderId,
          },
        });
      } else {
        this.messageService.remove();
        this.messageService.error('Failed to create booking. Please try again.');
      }
    } catch (error: any) {
      this.messageService.remove();
      let errorMessage = 'Failed to create booking. Please try again.';
      if (error.graphQLErrors?.length > 0) {
        errorMessage = `Server error: ${error.graphQLErrors[0].message}`;
      } else if (error.message) {
        errorMessage = error.message;
      }
      this.messageService.error(errorMessage);
    } finally {
      this.isCreatingOrder = false;
    }
  }
}