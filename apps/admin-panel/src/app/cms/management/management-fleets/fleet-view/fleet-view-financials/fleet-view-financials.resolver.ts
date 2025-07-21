import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  FleetFilter,
  FleetFinancialsGQL,
  FleetFinancialsQuery,
  FleetSortFields,
  FleetTransactionFilter,
  FleetTransactionSortFields,
} from '../../../../../../generated/graphql';
import { TableService } from '../../../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class FleetViewFinancialsResolver {
  constructor(
    private gql: FleetFinancialsGQL,
    private tableService: TableService,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<FleetFinancialsQuery>> {
    const paging = this.tableService.deserializeQueryParams<
      FleetTransactionSortFields,
      FleetTransactionFilter
    >(route.queryParams);
    return this.gql.fetch({ id: route.parent?.params.id, ...paging });
  }
}
