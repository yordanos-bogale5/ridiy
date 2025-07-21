import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  ViewPaymentGatewayGQL,
  ViewPaymentGatewayQuery,
} from '../../../../../generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class PaymentGatewayViewResolver {
  constructor(private gql: ViewPaymentGatewayGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<ViewPaymentGatewayQuery>> {
    return this.gql.fetch({ id: route.params.id });
  }
}
