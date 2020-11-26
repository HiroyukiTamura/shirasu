import 'package:flutter/cupertino.dart';

@immutable
class GraphqlQuery {
  const GraphqlQuery._();

  static const QUERY_FEATURED_PROGRAMS = r'''
query ListFeaturedPrograms($now: String!, $nowPlus7D: String!) {
    nowBroadcastings: searchPrograms(
        filter: {
            release: { eq: true }
            broadcastAt: { lte: $now }
            broadcastEndAt: { gt: $now }
        }
        sort: { field: broadcastAt, direction: asc }
        limit: 100
    ) {
        items {
            ...DashboardProgram
            __typename
        }
        __typename
    }
    comingBroadcastings: searchPrograms(
        filter: { release: { eq: true }, broadcastAt: { gte: $now, lte: $nowPlus7D } }
        sort: { field: broadcastAt, direction: asc }
        limit: 100
    ) {
        items {
            ...DashboardProgram
            __typename
        }
        __typename
    }
    viewerUser {
        id
        subscribedPrograms {
            ...DashboardProgram
            __typename
        }
        __typename
    }
}
fragment DashboardProgram on Program {
    broadcastAt
    channelId
    id
    mainTime
    releasedAt
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
  ''';

  static const QUERY_NEW_PROGRAMS = r'''
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
  ''';

  static const QUERY_DETAIL_PROGRAMS = r'''
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
  ''';

  static const QUERY_CHANNEL = r'''
query GetChannel($id: ID!) {
    channel: getChannel(id: $id) {
        ...UserChannelPageChannelData
        subscriptionPlan {
            ...UserChannelPageSubscriptionPlanData
            viewerPurchasedPlan {
                isActive
                __typename
            }
            __typename
        }
        programs(filter: { release: { eq: true } }, sortDirection: DESC, limit: 12) {
            items {
                ...UserChannelPageProgramData
                __typename
            }
            nextToken
            __typename
        }
        announcements(
            sortDirection: DESC
            filter: { isOpen: { eq: true } }
            limit: 5
        ) {
            items {
                ...TenantChannelAnnouncementsChannelAnnouncementData
                __typename
            }
            nextToken
            __typename
        }
        __typename
    }
}
fragment UserChannelPageChannelData on Channel {
    id
    name
    icon
    twitterUrl
    facebookUrl
    textOnPurchaseScreen
    detail
    __typename
}
fragment UserChannelPageSubscriptionPlanData on SubscriptionPlan {
    id
    amount
    currency
    isPurchasable
    __typename
}
fragment UserChannelPageProgramData on Program {
    id
    tenantId
    channelId
    title
    broadcastAt
    totalPlayTime
    viewerPlanType
    __typename
}
fragment TenantChannelAnnouncementsChannelAnnouncementData on ChannelAnnouncement {
    id
    isOpen
    isSubscriberOnly
    title
    text
    publishedAt
    createdAt
    updatedAt
    __typename
}
  ''';

  static const QUERY_VIEWER = r'''
query GetViewer {
    viewer {
        paymentMethods {
            ...UserAccountPaymentMethod
            __typename
        }
        authConnections
        __typename
    }
    viewerUser: viewerUser {
        ...UserAccountPageUserData
        invoiceHistory {
            items {
                ...UserAccountInvoiceData
                __typename
            }
            nextToken
            __typename
        }
        watchHistories(limit: 3, sortDirection: DESC) {
            items {
                ...UserAccountPageWatchHistoryData
                __typename
            }
            __typename
        }
        subscribedChannels {
            ...UserAccountSubscribedChannelData
            __typename
        }
        __typename
    }
}
fragment UserAccountPaymentMethod on PaymentMethod {
    id
    brand
    last4
    expirationDate
    __typename
}
fragment UserAccountPageUserData on User {
    id
    name
    icon
    __typename
}
fragment UserAccountInvoiceData on Invoice {
    id
    total
    currency
    label
    createdAt
    planType
    status
    __typename
}
fragment UserAccountPageWatchHistoryData on WatchHistory {
    id
    lastViewedAt
    program {
        id
        tenantId
        channelId
        title
        detail
        broadcastAt
        __typename
    }
    __typename
}
fragment UserAccountSubscribedChannelData on SubscribedChannel {
    subscribedAt
    currentPeriodEndAt
    channel {
        id
        name
        icon
        __typename
    }
    isActive
    latestInvoiceId
    latestInvoice {
        id
        description
        createdAt
        planType
        status
        hostedInvoiceUrl
        nextPaymentAttempt
        __typename
    }
    __typename
}
  ''';

  /// CAUTION if [limit] is null be set 20
  static String genQueryForWatchHistory({int limit}) => '''
query GetViewer(\$nextToken: String) {
    viewerUser: viewerUser {
        watchHistories(limit: ${limit ?? 20}, sortDirection: DESC, nextToken: \$nextToken) {
            items {
                ...WatchingHistoryPageWatchHistoryData
                __typename
            }
            nextToken
            __typename
        }
        __typename
    }
}
fragment WatchingHistoryPageWatchHistoryData on WatchHistory {
    id
    lastViewedAt
    program {
        id
        tenantId
        channelId
        title
        detail
        broadcastAt
        __typename
    }
    __typename
}
  ''';
}
