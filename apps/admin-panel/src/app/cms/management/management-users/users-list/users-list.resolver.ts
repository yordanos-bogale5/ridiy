import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  OperatorFilter,
  OperatorSortFields,
  UsersListGQL,
  UsersListQuery,
} from '../../../../../generated/graphql';
import { TableService } from '../../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class UsersListResolver {
  constructor(
    private paging: TableService,
    private gql: UsersListGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<UsersListQuery>> {
    const params = this.paging.deserializeQueryParams<
      OperatorSortFields,
      OperatorFilter
    >(route.queryParams);
    return this.gql.fetch(params);
  }
}
