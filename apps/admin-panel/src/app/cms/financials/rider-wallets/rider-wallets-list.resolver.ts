import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  RiderTransactionFilter,
  RiderTransactionSortFields,
  RiderWalletsListGQL,
  RiderWalletsListQuery,
} from '../../../../generated/graphql';
import { TableService } from '../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class RiderWalletsListResolver {
  constructor(
    private paging: TableService,
    private gql: RiderWalletsListGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<RiderWalletsListQuery>> {
    const params = this.paging.deserializeQueryParams<
      RiderTransactionSortFields,
      RiderTransactionFilter
    >(route.queryParams);
    return this.gql.fetch(params);
  }
}
