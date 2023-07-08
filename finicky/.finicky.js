// ~/.finicky.js

module.exports = {
  defaultBrowser: "Arc",
  rewrite: [
    {
      // Redirect all non-localhost URLs to use https
      match: ({ url }) => url.protocol === "http" && !/^(localhost|127\.0\.0\.1)/.test(url.host),
      url: { protocol: "https" }
    }
  ],      
  handlers: [
	{
	  // Redirecting to Telegram app
	  match: ["*t.me*"],
	  browser: "/Applications/Telegram.app"
	},
	{
	  // Redirecting to Discord app
	  match: ["*discord.gg*"],
	  browser: "/Applications/Discord.app"
	} 
  ]
};
