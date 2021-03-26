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

export class FcmQueUtil {

  static createFcmQue(item: ProgramItem): FcmQue {
    return {
      broadcastAt: item.broadcastAt,
      channelId: item.channel.id,
      channelName: item.channel.name,
      programId: item.id,
      programTitle: item.title,
      status: FcmQueStatus.NONE,
    };
  }

  /**
   * todo localize [body] with {@link NotificationMessagePayload.bodyLocKey}
   */
  static toFcmPayload(fcmQue: FcmQue, action: Action): {
    notification: { title: string; body: string };
    data: { programTitle: string; channelName: string; programId: string; channelId: string, action: string }
  } {
    return {
      notification: {
        title: fcmQue.programTitle,
        body: "放送時間になりました",
      },
      data: {
        programId: fcmQue.programId,
        programTitle: fcmQue.programTitle,
        channelId: fcmQue.channelId,
        channelName: fcmQue.channelName,
        action: action,
      },
    };
  }

  static toTopicChannel(que: FcmQue): string {
    return `channel_${que.channelId}`;
  }

  static toTopicProgram(que: FcmQue): string {
    return `program_${que.programId}`;
  }
}

export enum FcmQueStatus {
  NONE, MESSAGING, ERROR, SUCCESS,
}

export enum Action {
  OPEN_PROGRAM = "OPEN_PROGRAM", OPEN_CHANNEL = "OPEN_CHANNEL",
}
