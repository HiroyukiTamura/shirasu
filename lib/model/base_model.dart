import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/mixins/plan_type.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/util.dart';

@immutable
abstract class _GraphQlModel {
  String get typename;
}

@immutable
abstract class BaseChannel extends _GraphQlModel {}

@immutable
abstract class BaseProgram extends _GraphQlModel {
  String get id;

  String get tenantId;

  String get channelId;

  String get title;

  DateTime get broadcastAt;
}

@immutable
abstract class BaseSubscriptionPlan extends _GraphQlModel {
  String get id;

  int get amount;

  String get currency;

  bool get isPurchasable;
}

@immutable
abstract class BasePurchasedPlan extends _GraphQlModel {}

@immutable
abstract class BaseModelChannelAnnouncementConnection extends _GraphQlModel {}

@immutable
abstract class BaseChannelAnnouncement extends _GraphQlModel {}

@immutable
abstract class BaseModelProgramConnection extends _GraphQlModel {}

@immutable
abstract class BaseModelHandoutConnection extends _GraphQlModel {}

@immutable
abstract class BaseHandouts extends _GraphQlModel {}

@immutable
abstract class BaseHandout extends _GraphQlModel {}

@immutable
abstract class BaseVideo extends _GraphQlModel {}

@immutable
abstract class BaseOneTimePlan extends _GraphQlModel {}

@immutable
abstract class BaseExtension extends _GraphQlModel {}

@immutable
abstract class BaseViewer extends _GraphQlModel {}

@immutable
abstract class BasePaymentMethod extends _GraphQlModel {
  String get id;

  /// ex.visa
  String get brand;

  /// ex.1234
  String get last4;

  /// ex. 02/25
  String get expirationDate;
}

@immutable
abstract class BaseInvoice extends _GraphQlModel with PlanTypeMixin {
  String get id;

  DateTime get createdAt;

  /// ex. paid
  String get status;
}

@immutable
abstract class BaseModelCommentConnection extends _GraphQlModel {}

@immutable
abstract class BaseComment extends _GraphQlModel {}

@immutable
abstract class BaseUser extends _GraphQlModel {}

@immutable
abstract class BaseSearchableProgramConnection extends _GraphQlModel {
  List get items;
}

@immutable
abstract class BaseInvoiceConnection extends _GraphQlModel {}

@immutable
abstract class BaseWatchHistory extends _GraphQlModel {}

@immutable
abstract class BaseSubscribedChannel extends _GraphQlModel {}

@immutable
abstract class BaseModelWatchHistoryConnection extends _GraphQlModel {}

@immutable
abstract class BaseModelChannelConnection extends _GraphQlModel {}

@immutable
abstract class BaseUserWithAttribute extends _GraphQlModel {}

@immutable
abstract class BaseUserAttribute extends _GraphQlModel {}