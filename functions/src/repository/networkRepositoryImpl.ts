import {ApolloClient, gql, HttpLink, InMemoryCache} from "@apollo/client";
import {AssetsRepository} from "./assetsRepository";
import {NetworkRepository} from "./networkRepository";
import {NewProgramsParser, ResultNewPrograms} from "../model/graphql/resultNewprograms";
import fetch from "isomorphic-fetch";
import cheerio from "cheerio";
import moment from "moment";
import {DetailProgramsParser, ResultDetailProgram} from "../model/graphql/resultDetailProgram";
import {ScrapedProgram} from "../model/algolia/algoliaObj";

export class NetworkRepositoryImpl implements NetworkRepository {

  constructor(assetsRepository: AssetsRepository) {
    this.assetsRepository = assetsRepository;
  }

  private assetsRepository: AssetsRepository;

  private static readonly URL_GRAPHQL = "https://itvvnowbibekdj7la2nlxgkuva.appsync-api.ap-northeast-1.amazonaws.com/graphql";
  private static readonly API_KEY = "da2-d24szmfwejaztjqbviuj6r3oyy";
  private static readonly GENRON_ALPHA_SHIRASU = "https://genron-alpha.com/shirasuinfo-allprogram/";
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
    return NewProgramsParser.instance.parseJson(JSON.stringify(result.data));
  }

  async requestProgramDetail(id: string): Promise<ResultDetailProgram> {
    const queryString = await this.assetsRepository.loadQueryGetProgram();
    const result = await NetworkRepositoryImpl.CLIENT.query<string>({
      query: gql(queryString),
      fetchPolicy: "no-cache",
      variables: {
        "id": id,
      },
    });
    if (result.error)
      console.error(result.error);
    return DetailProgramsParser.instance.parseJson(JSON.stringify(result.data));
  }

  async crawlAllProgram(): Promise<ScrapedProgram[]> {
    const response = await fetch(NetworkRepositoryImpl.GENRON_ALPHA_SHIRASU);
    const text = await response.text();
    const $ = cheerio.load(text);
    return $("#footable_23754 tbody tr").map((i, ele) => {
      const $column0 = $(ele).find("td:nth-child(1) > a");
      const channelUrl = $column0.attr("href");
      const channelTitle = $column0.text();
      const $column1 = $(ele).find("td:nth-child(2) > a");
      const programUrl = $column1.attr("href");
      const programTitle = $column1.text();
      const ymd = $(ele).find("td:nth-child(4)").text();
      const time = moment(ymd, "YYYY/M/D");
      if (!time.isValid())
        throw Error(`time is invalid: ${time.toISOString()}`);
      if (!channelUrl)
        throw Error("channelUrl is undefined");
      if (!programUrl)
        throw Error("programUrl is undefined");
      return new ScrapedProgram(
          time.toDate(),
          channelTitle,
          channelUrl,
          programTitle,
          programUrl,
      );
    }).get() as ScrapedProgram[];
  }
}
