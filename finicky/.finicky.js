// ~/.finicky.js

module.exports = {
  defaultBrowser: "Arc",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
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
