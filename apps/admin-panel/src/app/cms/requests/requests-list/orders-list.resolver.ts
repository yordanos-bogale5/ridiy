import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  OrderFilter,
  OrdersListGQL,
  OrdersListQuery,
  OrderSortFields,
} from '../../../../generated/graphql';
import { TableService } from '../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class OrdersListResolver {
  constructor(
    private paging: TableService,
    private gql: OrdersListGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<OrdersListQuery>> {
    const params = this.paging.deserializeQueryParams<
      OrderSortFields,
      OrderFilter
    >(route.queryParams);
    return this.gql.fetch(params);
  }
}
