import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import { NotificationsGQL, NotificationsQuery } from '../../generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class CMSResolver {
  constructor(private gql: NotificationsGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<NotificationsQuery>> {
    return this.gql.watch({}).valueChanges;
  }
}
