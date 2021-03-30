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
}

export class ScrapedProgram implements IScrapedProgram {
  constructor(
    public broadcastAt: Date,
    public channelTitle: string,
    public channelUrl: string,
    public programTitle: string,
    public programUrl: string
  ) {
    Joi.object().keys({
      channelTitle: Joi.string().required(),
      channelUrl: Joi.string().required().uri(),
      programTitle: Joi.string().required(),
      programUrl: Joi.string().required().uri(),
      broadcastAt: Joi.date(),
    }).validate(this);
  }

  objectID: string = this.programUrl;
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
    ) {
        super(broadcastAt, channelTitle, channelUrl, programTitle, programUrl);
        Joi.object().keys({
            channelTitleHiragana: Joi.string().required(),
            channelTitleKatakana: Joi.string().required(),
            programTitleHiragana: Joi.string().required(),
            programTitleKatakana: Joi.string().required(),
        }).validate(this);
    }

    static appendReading(obj: IScrapedProgram,
                         programTitleHiragana: string,
                         programTitleKatakana: string,
                         channelTitleHiragana: string,
                         channelTitleKatakana: string,
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
            channelTitleHiragana
        );
    }
}