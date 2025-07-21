import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import { TranslateService } from '@ngx-translate/core';
import { RidersListQuery } from '../../../../../generated/graphql';
import { TableService } from '../../../../@services/table-service';
import { map, Observable, debounceTime, distinctUntilChanged } from 'rxjs';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Apollo } from 'apollo-angular';
import gql from 'graphql-tag';
import { DispatcherStateService } from '../dispatcher-state.service';

// GraphQL query to check if rider exists by phone number
const CHECK_RIDER_BY_PHONE = gql`
  query CheckRiderByPhone($mobileNumber: String!) {
    riders(filter: { mobileNumber: { eq: $mobileNumber } }) {
      nodes {
        id
        firstName
        lastName
        mobileNumber
      }
    }
  }
`;

@Component({
  standalone: false,
  selector: 'app-dispatcher-riders-list',
  templateUrl: './dispatcher-riders-list.component.html',
  styles: [],
})
export class DispatcherRidersListComponent implements OnInit {
  query?: Observable<ApolloQueryResult<RidersListQuery>>;
  guestForm: FormGroup;
  submitted = false;
  existingRider: any = null;
  checkingPhone = false;
  phoneCheckMessage = '';

  constructor(
    public route: ActivatedRoute,
    public translate: TranslateService,
    public tableService: TableService,
    private router: Router,
    private fb: FormBuilder,
    private apollo: Apollo,
    private dispatcherState: DispatcherStateService,
  ) {
    this.guestForm = this.fb.group({
      guestPhoneCountryCode: ['+1', [Validators.required]],
      guestPhoneNumber: ['', [Validators.required, Validators.pattern('^[0-9]{7,15}$')]],
    });
  }

  ngOnInit(): void {
    // Restore state if available
    const state = this.dispatcherState.getAll();
    if (state.guestPhoneNumber) {
      this.guestForm.patchValue({
        guestPhoneNumber: state.guestPhoneNumber,
        guestPhoneCountryCode: state.guestPhoneCountryCode || '+1',
      });
      this.existingRider = state.existingRider;
      this.phoneCheckMessage = this.existingRider
        ? `✅ Passenger found: ${this.existingRider.firstName} ${this.existingRider.lastName} (${this.existingRider.mobileNumber})`
        : '🆕 New passenger – booking will be created with this phone number.';
    }
    this.query = this.route.data.pipe(map((data) => data.riders));
    this.guestForm.get('guestPhoneNumber')?.valueChanges
      .pipe(debounceTime(500), distinctUntilChanged())
      .subscribe(phoneNumber => {
        if (phoneNumber && phoneNumber.length >= 7) {
          this.checkIfRiderExists(phoneNumber);
        } else {
          this.existingRider = null;
          this.phoneCheckMessage = '';
        }
      });
  }

  selectRider(id: string) {
    this.router.navigate(['../locations-select'], {
      relativeTo: this.route,
      queryParams: { riderId: id },
      queryParamsHandling: 'merge',
    });
  }

  checkIfRiderExists(phoneNumber: string) {
    this.checkingPhone = true;
    this.phoneCheckMessage = 'Checking phone number...';
    const countryCode = this.guestForm.get('guestPhoneCountryCode')?.value;
    this.dispatcherState.set('guestPhoneNumber', phoneNumber);
    this.dispatcherState.set('guestPhoneCountryCode', countryCode);
    this.apollo.query({
      query: CHECK_RIDER_BY_PHONE,
      variables: { mobileNumber: phoneNumber }
    }).subscribe({
      next: (result: any) => {
        this.checkingPhone = false;
        if (result.data?.riders?.nodes?.length > 0) {
          this.existingRider = result.data.riders.nodes[0];
          this.phoneCheckMessage = `✅ Passenger found: ${this.existingRider.firstName} ${this.existingRider.lastName} (${this.existingRider.mobileNumber})`;
          this.dispatcherState.set('existingRider', this.existingRider);
          this.dispatcherState.set('riderId', this.existingRider.id);
        } else {
          this.existingRider = null;
          this.phoneCheckMessage = '🆕 New passenger – booking will be created with this phone number.';
          this.dispatcherState.set('existingRider', null);
          this.dispatcherState.set('riderId', undefined);
        }
      },
      error: (error) => {
        this.checkingPhone = false;
        this.phoneCheckMessage = '⚠️ Unable to check phone number. Please try again.';
      }
    });
  }

  submitGuest() {
    this.submitted = true;
    if (this.guestForm.invalid) return;
    const { guestPhoneNumber, guestPhoneCountryCode } = this.guestForm.value;
    this.dispatcherState.set('guestPhoneNumber', guestPhoneNumber);
    this.dispatcherState.set('guestPhoneCountryCode', guestPhoneCountryCode);
    this.dispatcherState.set('riderId', this.existingRider ? this.existingRider.id : undefined);
    this.dispatcherState.set('existingRider', this.existingRider);
    // If rider exists, use their ID, otherwise proceed with guest booking
    const queryParams = this.existingRider
      ? { riderId: this.existingRider.id }
      : { guestPhoneNumber, guestPhoneCountryCode };
    this.router.navigate(['../locations-select'], {
      relativeTo: this.route,
      queryParams,
      queryParamsHandling: 'merge',
    });
  }
}
