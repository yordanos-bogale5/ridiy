import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  DriverFilter,
  DriversListGQL,
  DriversListQuery,
  DriverSortFields,
} from '../../../../generated/graphql';
import { TableService } from '../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class DriversListResolver {
  constructor(
    private paging: TableService,
    private gql: DriversListGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<DriversListQuery>> {
    const params = this.paging.deserializeQueryParams<
      DriverSortFields,
      DriverFilter
    >(route.queryParams);
    return this.gql.fetch(params);
  }
}
