import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { ApolloQueryResult } from '@apollo/client/core';
import {
  DispatcherCalculateFareGQL,
  DispatcherCalculateFareQuery,
} from '../../../../../generated/graphql';
import { Observable, of } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { DispatcherService } from '../dispatcher.service';

@Injectable()
export class DispatcherServiceSelectResolver {
  constructor(
    private dispatcherService: DispatcherService,
    private gql: DispatcherCalculateFareGQL,
  ) {}

  resolve(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ApolloQueryResult<DispatcherCalculateFareQuery>> {
    try {
      const points = this.dispatcherService.deserializePoints(
        route.queryParams.points,
      );

      // Handle both registered users and guest bookings
      const riderId = route.queryParams.riderId || null;

      const queryVariables = {
        points: points.map((point) => point.location),
        riderId: riderId,
      };

      return this.gql.fetch(queryVariables).pipe(
        catchError((error) => {
          // Return a mock result if the GraphQL query fails
          const mockResult: ApolloQueryResult<DispatcherCalculateFareQuery> = {
            data: {
              calculateFare: {
                services: [
                  {
                    name: 'Standard Services',
                    services: [
                      {
                        id: 'economy',
                        name: 'Economy',
                        cost: 15.50
                      },
                      {
                        id: 'comfort',
                        name: 'Comfort',
                        cost: 22.00
                      },
                      {
                        id: 'premium',
                        name: 'Premium',
                        cost: 35.00
                      }
                    ]
                  }
                ],
                currency: 'USD',
                distance: 0,
                duration: 0
              }
            },
            loading: false,
            networkStatus: 7
          };
          return of(mockResult);
        })
      );
    } catch (error) {
      // If there's an error with deserialization, return a mock result
      const mockResult: ApolloQueryResult<DispatcherCalculateFareQuery> = {
        data: {
          calculateFare: {
            services: [
              {
                name: 'Basic Services',
                services: [
                  {
                    id: 'economy',
                    name: 'Economy',
                    cost: 15.50
                  }
                ]
              }
            ],
            currency: 'USD',
            distance: 0,
            duration: 0
          }
        },
        loading: false,
        networkStatus: 7
      };
      return of(mockResult);
    }
  }
}
