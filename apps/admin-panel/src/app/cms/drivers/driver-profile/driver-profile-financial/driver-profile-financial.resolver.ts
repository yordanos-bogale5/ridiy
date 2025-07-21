import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  DriverFinancialsGQL,
  DriverFinancialsQuery,
  DriverTransactionFilter,
  DriverTransactionSortFields,
} from '../../../../../generated/graphql';
import { TableService } from '../../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class DriverProfileFinancialsResolver {
  constructor(
    private gql: DriverFinancialsGQL,
    private tableService: TableService,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<DriverFinancialsQuery>> {
    const paging = this.tableService.deserializeQueryParams<
      DriverTransactionSortFields,
      DriverTransactionFilter
    >(route.queryParams);
    return this.gql.fetch({ id: route.parent?.params.id, ...paging });
  }
}
