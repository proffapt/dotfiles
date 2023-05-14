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
	  // Redirecting to spotify app
	  match: ["*spotify.com*"],
	  browser: "/Applications/Spotify.app"
	},
	{
	  // Redirecting to Telegram app
	  match: ["*t.me*"],
	  browser: "/Applications/Telegram.app"
	},
	{
	  // Redirecting to Discord app
	  match: ["*discord.gg*"],
	  browser: "/Applications/Discord.app"
	}, 
	{
	  // Redirecting to Slack app
	  match: ["*kossiitkgp.slack.com*"],
	  browser: "/Applications/Slack.app"
	}
  ]
};
