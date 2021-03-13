import admin from "firebase-admin";
import {FirestoreRepository} from "./firestoreRepository";
import {ProgramItem} from "../model/graphql/resultNewprograms";
import {FcmQueImpl, FcmQueInitial, FcmQueStatus} from "../model/firestore/fcmQue";
import {firestore} from "firebase-admin/lib/firestore";
import Transaction = firestore.Transaction;

export class FirestoreRepositoryImpl implements FirestoreRepository {
  private readonly db = admin.firestore();
  private collection: FirebaseFirestore.CollectionReference<FirebaseFirestore.DocumentData>;

  constructor() {
    this.collection = this.db.collection("backendFcmQue");
  }

  async addFcmQueAndCleanUpLog(items: ProgramItem[]): Promise<void> {
    return this.db.runTransaction(async (t) => {
      await this.addFcmQue(t, items);
      await this.cleanUpLog(t);
    });
  }

  async checkQueAndSendFcm(): Promise<void> {
    const fcmMsgDataList = await this.getInvokableQue();
    const errPrgIds = await FirestoreRepositoryImpl.sendFcm(fcmMsgDataList);
    await this.writeFcmLogAsComplete(fcmMsgDataList, errPrgIds);
  }

  private async getInvokableQue(): Promise<FcmQueImpl[]> {
    let fcmMsgDataList: FcmQueImpl[] = [];
    await this.db.runTransaction(async (t) => {
      const snapshot = await t.get(this.collection
          .where("broadcastAt", "<", Date())
          .where("status", "==", FcmQueStatus.NONE));
      for (const doc of snapshot.docs)
        await t.update(doc.ref, "status", FcmQueStatus.MESSAGING);
      fcmMsgDataList = snapshot.docs.map((value) => (value.data() as FcmQueImpl));// todo check type
    });
    return fcmMsgDataList;
  }

  private static async sendFcm(fcmMsgDataList: FcmQueImpl[]): Promise<string[]> {
    const errPrgIds: string[] = [];
    for (const fcmMsgData of fcmMsgDataList) {
      try {
        const payload = fcmMsgData.toFcmPayload();
        await admin.messaging().sendToTopic(`channel_${fcmMsgData.channelId}`, payload);
        await admin.messaging().sendToTopic(`program_${fcmMsgData.programId}`, payload);
        console.log("fcm sent!", fcmMsgData.channelName, fcmMsgData.programTitle);
      } catch (e) {
        errPrgIds.push(fcmMsgData.programId);
      }
    }
    return errPrgIds;
  }

  private async writeFcmLogAsComplete(fcmMsgDataList: FcmQueImpl[], errPrgIds: string[]): Promise<void> {
    return this.db.runTransaction(async (t) => {
      for (const fcmMsgData of fcmMsgDataList) {
        const query = this.collection
            .where("programId", "==", fcmMsgData.programId)
            .where("status", "==", FcmQueStatus.MESSAGING)
            .limit(1);
        const snapshot = await t.get(query);
        if (!snapshot.empty) {
          const status = errPrgIds.includes(fcmMsgData.programId) ? FcmQueStatus.ERROR : FcmQueStatus.SUCCESS;
          await t.update(snapshot.docs[0].ref, "status", status);
        }
      }
    });
  }

  private async cleanUpLog(t: Transaction): Promise<void> {
    const snapSuccess = await this.collection.where("status", "==", FcmQueStatus.SUCCESS).get();
    for (const doc of snapSuccess.docs) {
      await t.delete(doc.ref);
    }
  }

  private async addFcmQue(t: Transaction, items: ProgramItem[]) {
    for (const item of items) {
      const snapshot = await t.get(this.collection.where("programId", "==", item.id));
      if (snapshot.empty) {
        const data = new FcmQueInitial(item);
        await t.set(this.collection.doc(), data);
      }
    }
  }
}
