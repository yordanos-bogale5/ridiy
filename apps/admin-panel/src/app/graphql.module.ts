// import { NgModule } from '@angular/core';
// import { APOLLO_OPTIONS } from 'apollo-angular';
// import {
//   ApolloClientOptions,
//   ApolloLink,
//   InMemoryCache,
//   NormalizedCacheObject,
//   split,
// } from '@apollo/client/core';
// import { HttpLink } from 'apollo-angular/http';
// import { DefaultOptions } from '@apollo/client/core';
// import { setContext } from '@apollo/client/link/context';
// import { environment } from '../environments/environment';
// import { getMainDefinition } from '@apollo/client/utilities';
// import { GraphQLWsLink } from '@apollo/client/link/subscriptions';
// import { createClient } from 'graphql-ws';
// import { onError } from '@apollo/client/link/error';

// export function createApollo(
//   httpLink: HttpLink,
// ): ApolloClientOptions<NormalizedCacheObject> {
//   const http = httpLink.create({
//     uri: `${environment.root}graphql`,
//   });
//   const wsLink = new GraphQLWsLink(
//     createClient({
//       url: environment.wsEndpoint,
//       connectionParams: () => ({
//         authToken: localStorage.getItem('ridy_admin_token'),
//       }),
//     }),
//   );
//   const basic = setContext(() => ({
//     headers: {
//       Accept: 'charset=utf-8',
//     },
//   }));
//   const auth = setContext(() => {
//     return {
//       headers: {
//         Authorization: `Bearer ${localStorage.getItem('ridy_admin_token')}`,
//       },
//     };
//   });
//   const defaultOptions: DefaultOptions = {
//     watchQuery: {
//       fetchPolicy: 'no-cache',
//       //errorPolicy: 'ignore',
//     },
//     query: {
//       fetchPolicy: 'no-cache',
//       //errorPolicy: 'all',
//     },
//   };
//   const errorLink = onError(({ graphQLErrors, networkError }) => {
//     if (graphQLErrors)
//       graphQLErrors.forEach(({ message, locations, path }) =>
//         console.log(
//           `[GraphQL error]: Message: ${message}, Location: ${locations}, Path: ${path}`,
//         ),
//       );
//     if (networkError) console.log(`[Network error]: ${networkError}`);
//   });

//   const link = ApolloLink.from([basic, auth, errorLink, http]);
//   const splitLink = split(
//     ({ query }) => {
//       const definition = getMainDefinition(query);
//       return (
//         definition.kind === 'OperationDefinition' &&
//         definition.operation === 'subscription'
//       );
//     },
//     wsLink,
//     link,
//   );

//   return {
//     cache: new InMemoryCache({
//       addTypename: false,
//     }),
//     link: splitLink,

//     defaultOptions,
//   };
// }

// @NgModule({
//   providers: [
//     {
//       provide: APOLLO_OPTIONS,
//       useFactory: createApollo,
//       deps: [HttpLink],
//     },
//   ],
// })
// export class GraphQLModule {}
