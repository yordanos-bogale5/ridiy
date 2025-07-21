import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  RewardListQuery,
  RewardFilter,
  RewardListGQL,
  RewardSortFields,
} from '../../../../../generated/graphql';
import { TableService } from '../../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class RewardListResolver {
  constructor(
    private paging: TableService,
    private gql: RewardListGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<RewardListQuery>> {
    const params = this.paging.deserializeQueryParams<
      RewardSortFields,
      RewardFilter
    >(route.queryParams);
    return this.gql.fetch(params);
  }
}
