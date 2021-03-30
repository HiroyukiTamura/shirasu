import * as Joi from "joi";

export interface AlgoliaObj {
  objectID: string;
}

export interface IScrapedProgram extends AlgoliaObj {
  broadcastAt: Date;
  programTitle: string;
  channelTitle: string;
  channelUrl: string;
  programUrl: string;
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

