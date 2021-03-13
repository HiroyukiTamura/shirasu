module.exports = {
  root: true,
  env: {
    es6: true,
    node: true,
  },
  extends: [
    "eslint:recommended",
    "plugin:import/errors",
    "plugin:import/warnings",
    "plugin:import/typescript",
    "google",
    "plugin:@typescript-eslint/recommended",
  ],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    project: ["tsconfig.json", "tsconfig.dev.json"],
    sourceType: "module",
  },
  ignorePatterns: [
    "/lib/**/*", // Ignore built files.
    "/src/model/graphql/resultNewprograms.ts",
  ],
  plugins: [
    "@typescript-eslint",
    "import",
  ],
  rules: {
    "quotes": ["error", "double"],
    "require-jsdoc": "off",
    "max-len": ["error", {
      "code": 120,
      "ignoreUrls": true,
    }],
    "curly": "off",
    "padded-blocks": "off",
    "arrow-parens": "off",
    "valid-jsdoc": "off",
  },
};
