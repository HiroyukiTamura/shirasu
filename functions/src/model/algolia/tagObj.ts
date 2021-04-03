import * as Joi from "joi";

/**
 * @link tagHiragana is empty if reading is unknown
 * @link tagKatakana is empty if reading is unknown
 */
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
