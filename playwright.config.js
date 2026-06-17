const { defineConfig } = require("@playwright/test");

module.exports = defineConfig({
  timeout: 60000,
  testDir: "./testing",
  use: {
    baseURL: "http://127.0.0.1:4173",
  },
  webServer: {
    command: "npx serve . -l 4173",
    url: "http://127.0.0.1:4173",
    reuseExistingServer: true,
    timeout: 30000,
  },
});
