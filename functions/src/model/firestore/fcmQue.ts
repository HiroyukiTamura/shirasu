import {ProgramItem} from "../graphql/resultNewprograms";

export interface FcmQue {
  endMessaging?: Date,
  programId: string,
  programTitle: string,
  channelId: string,
  channelName: string,
  startMessaging?: Date,
  broadcastAt: Date,
  status: FcmQueStatus,
}

export class FcmQueInitial implements FcmQue {
  readonly endMessaging?: Date;
  readonly programId: string;
  readonly startMessaging?: Date;
  readonly status: FcmQueStatus;
  readonly broadcastAt: Date;
  readonly programTitle: string;
  readonly channelId: string;
  readonly channelName: string;

  constructor(programItem: ProgramItem) {
    this.programId = programItem.id;
    this.programTitle = programItem.title;
    this.broadcastAt = programItem.broadcastAt;
    this.channelId = programItem.channelId;
    this.channelName = programItem.channel.name;
    this.status = FcmQueStatus.NONE;
  }
}

export class FcmQueImpl implements FcmQue {

  constructor(
    public broadcastAt: Date,
    public channelId: string,
    public channelName: string,
    public endMessaging: Date,
    public programId: string,
    public programTitle: string,
    public startMessaging: Date,
    public status: FcmQueStatus,
  ) {
  }

  /**
   * todo localize [body] with {@link NotificationMessagePayload.bodyLocKey}
   */
  toFcmPayload(): {
    notification: { title: string; body: string };
    data: { programTitle: string; channelName: string; programId: string; channelId: string }
    } {
    return {
      notification: {
        title: this.programTitle,
        body: "放送時間になりました",
      },
      data: {
        programId: this.programId,
        programTitle: this.programTitle,
        channelId: this.channelId,
        channelName: this.channelName,
      },
    };
  }
}

export enum FcmQueStatus {
  NONE, MESSAGING, ERROR, SUCCESS,
}
