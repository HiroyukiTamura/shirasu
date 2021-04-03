import * as Joi from "joi";

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
    readonly tagList: string[];
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
    const pathList = new URL(this.programUrl).pathname.split("/");
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
      readonly tagList: string[],
  ) {
    super(broadcastAt, channelTitle, channelUrl, programTitle, programUrl);
    Joi.object().keys({
      tagList: Joi.array().items(Joi.string().allow("")).required(),
    }).validate(this);
  }

  static appendReading(obj: IScrapedProgram,
      tagList: string[],
  ): AlgoliaObj {
    return new AlgoliaObj(
        obj.broadcastAt,
        obj.channelTitle,
        obj.channelUrl,
        obj.programTitle,
        obj.programUrl,
        tagList,
    );
  }
}
