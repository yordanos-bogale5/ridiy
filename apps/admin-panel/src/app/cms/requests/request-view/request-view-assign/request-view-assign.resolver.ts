import { Injectable } from '@angular/core';
import {
  Router,
  RouterStateSnapshot,
  ActivatedRouteSnapshot,
} from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  AvailableDriversForOrderGQL,
  AvailableDriversForOrderQuery,
  ViewOrderQuery,
} from '../../../../../generated/graphql';
import { Observable, of } from 'rxjs';

@Injectable()
export class RequestViewAssignResolver {
  constructor(private gql: AvailableDriversForOrderGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<AvailableDriversForOrderQuery>> {
    const order: ApolloQueryResult<ViewOrderQuery> = route.parent!.data.order;
    return this.gql.fetch({ center: order.data.order!.points[0], count: 10 });
  }
}
