// ~/.finicky.js

export default {
  defaultBrowser: "Arc",
  rewrite: [
    {
      match: ({ url }) => url.protocol === "http:" && !/^(localhost|127\.0\.0\.1)/.test(url.host),
      url: ({ url }) => {
        const newUrl = new URL(url.href);
        newUrl.protocol = "https:";
        return newUrl;
      }
    }
  ],
  handlers: [
    {
      match: ["*t.me*"],
      browser: "/Applications/Telegram.app"
    },
    {
      match: ["*discord.gg*"],
      browser: "/Applications/Discord.app"
    }
  ]
};

