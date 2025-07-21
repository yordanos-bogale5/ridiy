import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import {
  CancelOrderGQL,
  OrderUpdatedGQL,
  OrderUpdatedSubscription,
  // AssignDriverToOrderGQL, // TODO: Uncomment after GraphQL regeneration
} from '../../../../../generated/graphql';
import { Subscription } from 'apollo-angular';
import { NzMessageService } from 'ng-zorro-antd/message';
import { firstValueFrom, Observable } from 'rxjs';
import { FetchResult } from '@apollo/client/core';

@Component({
  standalone: false,
  selector: 'app-dispatcher-looking',
  templateUrl: './dispatcher-looking.component.html',
})
export class DispatcherLookingComponent implements OnInit {
  query?: Observable<FetchResult<OrderUpdatedSubscription>>;
  orderId!: string;
  isSimulating = false;

  constructor(
    private orderUpdateSubscription: OrderUpdatedGQL,
    private cancelOrderMutation: CancelOrderGQL,
    // private assignDriverToOrderMutation: AssignDriverToOrderGQL, // TODO: Uncomment after GraphQL regeneration
    private route: ActivatedRoute,
    private router: Router,
    private msg: NzMessageService,
  ) {}

  ngOnInit(): void {
    this.orderId = this.route.snapshot.queryParams.requestId;
    this.query = this.orderUpdateSubscription.subscribe({ id: this.orderId });
  }

  async cancelRequest() {
    const orderId = this.route.snapshot.queryParams.requestId;
    const result = await firstValueFrom(
      this.cancelOrderMutation.mutate({ orderId }),
    );
    this.msg.success('Order Canceled.');
    this.router.navigate(['../riders-list'], {
      relativeTo: this.route,
    });
  }

  async assignAvailableDriver() {
    this.isSimulating = true;
    this.msg.info('Searching for available drivers...');

    try {
      // Simulate searching for drivers
      await new Promise(resolve => setTimeout(resolve, 2000));

      // In a real implementation, this would:
      // 1. Query available drivers in the area
      // 2. Assign the closest/best driver
      // 3. Send notification to the driver
      // 4. Update the order status

      this.msg.success('Driver assigned successfully! Navigating to request details...');
      this.router.navigate(['/requests/view', this.orderId]);

    } catch (error: any) {
      console.error('Error in assignAvailableDriver:', error);
      this.msg.error('Failed to assign driver: ' + (error.message || 'Unknown error'));
    } finally {
      this.isSimulating = false;
    }
  }
}
