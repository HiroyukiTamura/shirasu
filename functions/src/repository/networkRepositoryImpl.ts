import {ApolloClient, gql, HttpLink, InMemoryCache} from "@apollo/client";
import {AssetsRepository} from "./assetsRepository";
import {NetworkRepository} from "./networkRepository";
import {ConvertNewPrograms, ResultNewPrograms} from "../model/graphql/resultNewprograms";
import fetch from "isomorphic-fetch";

export class NetworkRepositoryImpl implements NetworkRepository {

  constructor(assetsRepository: AssetsRepository) {
    this.assetsRepository = assetsRepository;
  }

  private assetsRepository: AssetsRepository;

  private static readonly URL_GRAPHQL = "https://itvvnowbibekdj7la2nlxgkuva.appsync-api.ap-northeast-1.amazonaws.com/graphql";
  private static readonly API_KEY = "da2-d24szmfwejaztjqbviuj6r3oyy";
  private static readonly CLIENT = new ApolloClient({
    cache: new InMemoryCache(),
    link: new HttpLink({
      uri: NetworkRepositoryImpl.URL_GRAPHQL,
      headers: {
        "x-api-key": NetworkRepositoryImpl.API_KEY,
      },
      fetch,
    }),
  });

  async requestNewPrograms(): Promise<ResultNewPrograms> {
    const queryString = await this.assetsRepository.loadQueryNewPrograms();
    const result = await NetworkRepositoryImpl.CLIENT.query<string>({
      query: gql(queryString),
      fetchPolicy: "no-cache",
    });
    if (result.error)
      console.error(result.error);
    return ConvertNewPrograms.toResultNewPrograms(JSON.stringify(result.data));
  }
}
