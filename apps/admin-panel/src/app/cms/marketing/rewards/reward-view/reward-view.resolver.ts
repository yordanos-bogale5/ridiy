import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  ViewRewardGQL,
  ViewRewardQuery,
} from '../../../../../generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class RewardViewResolver {
  constructor(private gql: ViewRewardGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<ViewRewardQuery>> {
    return this.gql.fetch({ id: route.params.id });
  }
}
