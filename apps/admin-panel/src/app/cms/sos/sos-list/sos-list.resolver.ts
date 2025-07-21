import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  DistressSignalFilter,
  DistressSignalSortFields,
  SosListGQL,
  SosListQuery,
} from '../../../../generated/graphql';
import { TableService } from '../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class SOSListResolver {
  constructor(
    private paging: TableService,
    private gql: SosListGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<SosListQuery>> {
    const params = this.paging.deserializeQueryParams<
      DistressSignalSortFields,
      DistressSignalFilter
    >(route.queryParams);
    return this.gql.fetch(params);
  }
}
