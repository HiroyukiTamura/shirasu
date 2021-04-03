import * as Joi from "joi";

interface AlgoliaObjBase {
  objectID: string;
}

export interface IScrapedProgram extends AlgoliaObjBase {
  broadcastAt: Date;
  programTitle: string;
  channelTitle: string;
  channelUrl: string;
  programUrl: string;
}

interface IAlgoliaObj extends IScrapedProgram {
    programTitleHiragana: string;
    programTitleKatakana: string;
    channelTitleHiragana: string;
    channelTitleKatakana: string;
    tagList: ITagObj[];
}

export interface ITagObj {
  tag: string;
  tagHiragana: string;
  tagKatakana: string;
}

export class TagObj implements ITagObj {

  constructor(
      public tag: string,
      public tagHiragana: string,
      public tagKatakana: string,
  ) {
    Joi.object().keys({
      tag: Joi.string().required(),
      tagHiragana: Joi.string().required().allow(""),
      tagKatakana: Joi.string().required().allow(""),
    }).validate(this);
  }
}

export class ScrapedProgram implements IScrapedProgram {
  constructor(
    public broadcastAt: Date,
    public channelTitle: string,
    public channelUrl: string,
    public programTitle: string,
    public programUrl: string
  ) {
    this.objectID = this.programUrl;
    Joi.object().keys({
      objectID: Joi.string().required(),
      channelTitle: Joi.string().required(),
      channelUrl: Joi.string().required().uri(),
      programTitle: Joi.string().required(),
      programUrl: Joi.string().required().uri(),
      broadcastAt: Joi.date(),
    }).validate(this);
  }

  objectID: string;

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
    public programTitleHiragana: string,
    public programTitleKatakana: string,
    public channelTitleHiragana: string,
    public channelTitleKatakana: string,
      public tagList: TagObj[],
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
