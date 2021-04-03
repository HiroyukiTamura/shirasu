export class GlobalUtil {

  static sleep(ms: number): Promise<void> {
    return new Promise(r => setTimeout(r, ms));
  }

  static sleep1s(): Promise<void> {
    return this.sleep(1000);
  }

  /**
   * @see https://qiita.com/mimoe/items/855c112625d39b066c9a
   */
  static hiragana2Katakana(str: string): string {
    return str.replace(/[\u3041-\u3096]/g, function(match) {
      const chr = match.charCodeAt(0) + 0x60;
      return String.fromCharCode(chr);
    });
  }
}
