import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  ServiceOptionsListGQL,
  ServiceOptionsListQuery,
} from '../../../../../generated/graphql';
import { TableService } from '../../../../@services/table-service';
import { Observable } from 'rxjs';

@Injectable()
export class ServiceOptionsListResolver {
  constructor(
    private paging: TableService,
    private gql: ServiceOptionsListGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<ServiceOptionsListQuery>> {
    //const params = this.paging.deserializeQueryParams<FeedbackParameterSortFields, FeedbackParameterFilter>(route.queryParams);
    return this.gql.fetch();
  }
}
