import admin from "firebase-admin";
import {FirestoreRepository} from "./firestoreRepository";
import {ProgramItem} from "../model/graphql/resultNewprograms";
import {Action, FcmQue, FcmQueStatus, FcmQueUtil} from "../model/firestore/fcmQue";
import {firestore} from "firebase-admin/lib/firestore";
import QuerySnapshot = firestore.QuerySnapshot;

export class FirestoreRepositoryImpl implements FirestoreRepository {
  private readonly db = admin.firestore();
  private collection: FirebaseFirestore.CollectionReference<FirebaseFirestore.DocumentData>;

  constructor() {
    this.collection = this.db.collection("backendFcmQue");
  }

  async addFcmQueAndCleanUpLog(items: ProgramItem[]): Promise<void> {
    return this.db.runTransaction(async (t) => {
      const fcmQues: FcmQue[] = [];
      for (const item of items) {
        const snapshot = await t.get(this.collection.where("programId", "==", item.id));
        if (snapshot.empty && Date.now() < item.broadcastAt.getTime()) {
          const que = FcmQueUtil.createFcmQue(item);
          fcmQues.push(que);
        }
      }
      const snapSuccess = await t.get(this.collection.where("status", "==", FcmQueStatus.SUCCESS));
      for (const doc of snapSuccess.docs)
        await t.delete(doc.ref);
      for (const fcmQue of fcmQues)
        await t.set(this.collection.doc(), fcmQue);
    });
  }

  async checkQueAndSendFcm(): Promise<void> {
    const fcmMsgDataList = await this.getInvokableQue();
    const errPrgIds = await FirestoreRepositoryImpl.sendFcm(fcmMsgDataList);
    await this.writeFcmLogAsComplete(fcmMsgDataList, errPrgIds);
  }

  private async getInvokableQue(): Promise<FcmQue[]> {
    let fcmMsgDataList: FcmQue[] = [];
    await this.db.runTransaction(async (t) => {
      const snapshot = await t.get(this.collection
          .where("broadcastAt", "<", Date.now())
          .where("status", "==", FcmQueStatus.NONE));
      for (const doc of snapshot.docs)
        await t.update(doc.ref, "status", FcmQueStatus.MESSAGING);
      fcmMsgDataList = snapshot.docs.map((value) => (value.data() as FcmQue));// todo check type
    });
    return fcmMsgDataList;
  }

  private static async sendFcm(fcmMsgDataList: FcmQue[]): Promise<string[]> {
    const errPrgIds: string[] = [];
    for (const fcmMsgData of fcmMsgDataList) {
      try {
        await admin.messaging().sendToTopic(
            FcmQueUtil.toTopicChannel(fcmMsgData),
            FcmQueUtil.toFcmPayload(fcmMsgData, Action.OPEN_CHANNEL),
        );
        await admin.messaging().sendToTopic(
            FcmQueUtil.toTopicProgram(fcmMsgData),
            FcmQueUtil.toFcmPayload(fcmMsgData, Action.OPEN_PROGRAM)
        );
        console.log("fcm sent!", fcmMsgData.channelName, fcmMsgData.programTitle);
      } catch (e) {
        errPrgIds.push(fcmMsgData.programId);
      }
    }
    return errPrgIds;
  }

  private async writeFcmLogAsComplete(fcmMsgDataList: FcmQue[], errPrgIds: string[]): Promise<void> {
    return this.db.runTransaction(async (t) => {
      const snapshotList: Array<QuerySnapshot<firestore.DocumentData>> = [];
      for (const fcmMsgData of fcmMsgDataList) {
        const query = this.collection
            .where("programId", "==", fcmMsgData.programId)
            .where("status", "==", FcmQueStatus.MESSAGING)
            .limit(1);
        const snapshot = await t.get(query);
        snapshotList.push(snapshot);
      }
      for (let i = 0; i < snapshotList.length; i++) {
        const snapshot = snapshotList[i];
        const fcmMsgData = fcmMsgDataList[i];
        if (!snapshot.empty) {
          const status = errPrgIds.includes(fcmMsgData.programId) ? FcmQueStatus.ERROR : FcmQueStatus.SUCCESS;
          await t.update(snapshot.docs[0].ref, "status", status);
        }
      }
    });
  }
}
