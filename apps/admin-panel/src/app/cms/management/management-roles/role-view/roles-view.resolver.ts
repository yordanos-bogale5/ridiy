import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import { RoleGQL, RoleQuery } from '../../../../../generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class RoleViewResolver {
  constructor(private gql: RoleGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<RoleQuery>> {
    return this.gql.fetch({ id: route.params.id });
  }
}
