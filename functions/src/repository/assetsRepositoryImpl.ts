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

  loadQueryGetProgram(): string {
    return `
query GetProgram($id: ID!) {
    viewer {
        name
        icon
        __typename
    }
    program: getProgram(id: $id) {
        ...UserPageProgramData
        extensions {
            ...UserPageLiveExtensionData
            __typename
        }
        channel {
            ...UserPageChannelData
            __typename
        }
        handouts(sortDirection: DESC) {
            items {
                ...UserPageHandoutData
                __typename
            }
            nextToken
            __typename
        }
        videos {
            items {
                ...UserPageVideoData
                __typename
            }
            nextToken
            __typename
        }
        onetimePlans {
            ...UserPageOneTimePlanData
            __typename
        }
        __typename
    }
}
fragment UserPageProgramData on Program {
    id
    channelId
    tenantId
    adminComment
    adminCommentDisappearAt
    broadcastAt
    detail
    mainTime
    previewTime
    release
    tags
    title
    totalPlayTime
    viewerPlanType
    isExtensionChargedToSubscribers
    archivedAt
    releaseState
    shouldArchive
    extensions {
        ...UserPageLiveExtensionData
        __typename
    }
    __typename
}
fragment UserPageLiveExtensionData on LiveExtension {
    id
    extensionTime
    oneTimePlanId
    oneTimePlan {
        ...UserPageOneTimePlanData
        __typename
    }
    __typename
}
fragment UserPageOneTimePlanData on OneTimePlan {
    id
    parentPlanType
    parentPlanId
    productType
    productId
    name
    amount
    currency
    isPurchasable
    viewerPurchasedPlan {
        isActive
        __typename
    }
    __typename
}
fragment UserPageChannelData on Channel {
    id
    tenantId
    name
    icon
    textOnPurchaseScreen
    __typename
}
fragment UserPageHandoutData on Handout {
    id
    programId
    extensionId
    name
    createdAt
    __typename
}
fragment UserPageVideoData on Video {
    id
    videoType
    mediaStatus
    liveUrl
    archiveUrl
    __typename
}
`;
  }
}
