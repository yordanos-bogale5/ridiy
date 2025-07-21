import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import { ViewSosGQL, ViewSosQuery } from '../../../../generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class SOSViewResolver {
  constructor(private gql: ViewSosGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<ViewSosQuery>> {
    return this.gql.fetch({ id: route.params.id });
  }
}
