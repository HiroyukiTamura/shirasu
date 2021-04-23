class GraphqlQuery {
  const GraphqlQuery._();

  static const QUERY_SUBSCRIPTION_PROGRAM = r'''
query ListSubscribedPrograms($nextToken: String) {
    viewerUser: viewerUser {
        id
        subscribedPrograms: subscribedPrograms(limit: 12, nextToken: $nextToken) {
            items {
                ...DashboardProgram
                __typename
            }
            nextToken
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

  static const QUERY_FEATURED_PROGRAMS = r'''
query ListProgramsAndChannels(
    $now: String!
    $nowPlus7D: String!
    $nextToken: String
) {
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
        filter: {
            release: { eq: true }
            broadcastAt: { gte: $now, lte: $nowPlus7D }
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
    channels: listChannels(
        filter: { release: { eq: open } }
        nextToken: $nextToken
    ) {
        items {
            ...DashboardChannel
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
query GetProgram($id: ID!, $focusedReviewAuthorName: String, $reviewsNextToken: String) {
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
        reviews(limit: 10, state: open, nextToken: $reviewsNextToken) {
            items {
                ...UserPageReviewData
                __typename
            }
            nextToken
            __typename
        }
        focusedReview: review(authorName: $focusedReviewAuthorName) {
            ...UserPageReviewData
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
    myReview {
        ...UserPageReviewData
        state
        __typename
    }
    extensions {
        ...UserPageLiveExtensionData
        __typename
    }
    __typename
}
fragment UserPageReviewData on Review {
    id
    body
    createdAt
    user {
        id
        name
        icon
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
query GetChannel($id: ID!, $nextToken: String) {
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
        programs(
            filter: { release: { eq: true } }
            sortDirection: DESC
            limit: 20
            nextToken: $nextToken
        ) {
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
                ...UserChannelPageChannelAnnouncementData
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
fragment UserChannelPageChannelAnnouncementData on ChannelAnnouncement {
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

  static const QUERY_VIEWER = '''
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
        invoiceHistory(limit: 3) {
            items {
                ...UserAccountInvoiceData
                __typename
            }
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
            items {
                ...UserAccountSubscribedChannelData
                __typename
            }
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
    subtotal
    tax
    discountAmount
    currency
    label
    createdAt
    planType
    status
    hostedInvoiceUrl
    discount {
        coupon {
            durationInMonths
            __typename
        }
        __typename
    }
    products {
        id
        ... on Channel {
            name
            __typename
        }
        ... on Program {
            title
            tenantId
            channelId
            __typename
        }
        ... on LiveExtension {
            programId
            __typename
        }
        __typename
    }
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
    id
    subscribedAt
    currentPeriodEndAt
    channel {
        id
        name
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
    defaultPaymentMethodId
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

  static const MUTATE_UPDATE_USER_WITH_ATTRIBUTE = r'''
mutation UpdateUserWithAttribute($input: UpdateUserWithAttributeInput) {
    updateUserWithAttribute(input: $input) {
        user {
            id
            name
            icon
            createdAt
            updatedAt
            roles
            tenants {
                nextToken
                __typename
            }
            comments {
                nextToken
                __typename
            }
            reviews {
                nextToken
                __typename
            }
            __typename
        }
        attr {
            id
            email
            birthDate
            job
            country
            prefecture
            createdAt
            updatedAt
            __typename
        }
        __typename
    }
}
  ''';

  static const String MUTATE_HAND_OUT_URL = r'''
mutation GetSignedUrl(
    $operation: S3Operation!
    $key: String!
    $contentType: String
    $contentLength: Int
    $filename: String
) {
    getSignedUrl(
        operation: $operation
        key: $key
        contentType: $contentType
        contentLength: $contentLength
        filename: $filename
    )
}''';

  static const String QUERY_COMMENTS = r'''
query ListCommentsByProgram(
    $programId: ID!
    $beginTime: Int!
    $endTime: Int!
    $includeNG: Boolean
    $sortDirection: ModelSortDirection
    $nextToken: String
) {
    comments: listCommentsByProgram(
        programId: $programId
        commentTimeRange: [$beginTime, $endTime]
        includeNG: $includeNG
        sortDirection: $sortDirection
        nextToken: $nextToken
    ) {
        items {
            ...UseProgramCommentData
            __typename
        }
        nextToken
        __typename
    }
}

fragment UseProgramCommentData on Comment {
    id
    text
    commentTime
    userId
    user {
        id
        name
        icon
        __typename
    }
    __typename
}
''';

  static const MUTATE_POST_COMMENT = r'''
mutation PostComment($input: PostCommentInput!) {
  comment: postComment(input: $input) {
    ...UseProgramCommentData
    __typename
  }
}
fragment UseProgramCommentData on Comment {
  id
  text
  commentTime
  userId
  user {
    id
    name
    icon
    __typename
  }
  __typename
}
''';
}
