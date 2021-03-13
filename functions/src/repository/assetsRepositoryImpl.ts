import {AssetsRepository} from "./assetsRepository";

export class AssetsRepositoryImpl implements AssetsRepository {

  loadQueryNewPrograms(): string {
    return `
query ListNewPrograms($nextToken: String) {
    newPrograms: searchPrograms(
        filter: { release: { eq: true } }
        sort: { field: createdAt, direction: desc }
        limit: 12
        nextToken: $nextToken
    ) {
        items {
            ...DashboardProgram
            __typename
        }
        nextToken
        __typename
    }
}
fragment DashboardProgram on Program {
    broadcastAt
    channelId
    id
    mainTime
    releasedAt
    tenantId
    title
    totalPlayTime
    viewerPlanType
    channel {
        ...DashboardChannel
        __typename
    }
    __typename
}
fragment DashboardChannel on Channel {
    id
    name
    __typename
}
`;
  }
}
