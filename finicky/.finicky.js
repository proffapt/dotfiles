// ~/.finicky.js

module.exports = {
  defaultBrowser: "LibreWolf",
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
	  browser: "/Users/proffapt/Applications/Spotify.app"
	},
	{
	  // Redirecting to zoom app
	  match: ["*zoom.us*"],
	  browser: "/Applications/zoom.us.app"
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
