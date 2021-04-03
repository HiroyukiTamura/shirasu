import * as Joi from "joi";
import {ITagObj, TagObj} from "./tagObj";

/**
 * @link objectID === programId
 */
interface AlgoliaObjBase {
  readonly objectID: string;
}

/**
 * @link programUrl : ex. https://shirasu.io/t/genron/c/genron/p/20210329
 * @link channelUrl : ex. https://shirasu.io/c/genron
 */
export interface IScrapedProgram extends AlgoliaObjBase {
  readonly broadcastAt: Date;
  readonly programTitle: string;
  readonly channelTitle: string;
  readonly channelUrl: string;
  readonly programUrl: string;
}

interface IAlgoliaObj extends IScrapedProgram {
    readonly programTitleHiragana: string;
    readonly programTitleKatakana: string;
    readonly channelTitleHiragana: string;
    readonly channelTitleKatakana: string;
    readonly tagList: ITagObj[];
}

export class ScrapedProgram implements IScrapedProgram {
  constructor(
    readonly broadcastAt: Date,
    readonly channelTitle: string,
    readonly channelUrl: string,
    readonly programTitle: string,
    readonly programUrl: string
  ) {
    this.objectID = this.toProgramId();
    Joi.object().keys({
      objectID: Joi.string().required(),
      channelTitle: Joi.string().required(),
      channelUrl: Joi.string().required().uri(),
      programTitle: Joi.string().required(),
      programUrl: Joi.string().required().uri(),
      broadcastAt: Joi.date(),
    }).validate(this);
  }

  readonly objectID: string;

  /**
   * ex. https://shirasu.io/t/genron/c/genron/p/20210326
   * => genron-genron-20210326
   */
  toProgramId(): string {
    const pathList = new URL(this.objectID).pathname.split("/");
    return `${pathList[2]}-${pathList[4]}-${pathList[6]}`;
  }
}

export class AlgoliaObj extends ScrapedProgram implements IAlgoliaObj {
  constructor(
      broadcastAt: Date,
      channelTitle: string,
      channelUrl: string,
      programTitle: string,
      programUrl: string,
      readonly programTitleHiragana: string,
      readonly programTitleKatakana: string,
      readonly channelTitleHiragana: string,
      readonly channelTitleKatakana: string,
      readonly tagList: TagObj[],
  ) {
    super(broadcastAt, channelTitle, channelUrl, programTitle, programUrl);
    Joi.object().keys({
      channelTitleHiragana: Joi.string().required().allow(""),
      channelTitleKatakana: Joi.string().required().allow(""),
      programTitleHiragana: Joi.string().required().allow(""),
      programTitleKatakana: Joi.string().required().allow(""),
      tagList: Joi.array().required(),
    }).validate(this);
  }

  static appendReading(obj: IScrapedProgram,
      programTitleHiragana: string,
      programTitleKatakana: string,
      channelTitleHiragana: string,
      channelTitleKatakana: string,
      tagList: TagObj[],
  ): AlgoliaObj {
    return new AlgoliaObj(
        obj.broadcastAt,
        obj.channelTitle,
        obj.channelUrl,
        obj.programTitle,
        obj.programUrl,
        programTitleHiragana,
        programTitleKatakana,
        channelTitleHiragana,
        channelTitleKatakana,
        tagList,
    );
  }
}
