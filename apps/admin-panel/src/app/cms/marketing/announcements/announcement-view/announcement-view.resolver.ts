import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  ViewAnnouncementGQL,
  ViewAnnouncementQuery,
} from '../../../../../generated/graphql';
import { Observable } from 'rxjs';

@Injectable()
export class AnnouncementViewResolver {
  constructor(private gql: ViewAnnouncementGQL) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<ViewAnnouncementQuery>> {
    return this.gql.fetch({ id: route.params.id });
  }
}
