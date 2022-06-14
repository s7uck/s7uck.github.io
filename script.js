let here = new URL(location.href);
// this bot is useless so it's ok to expose the token
let telegramBot = "5331820739:AAGB1RV_2hTeJQfkYs3qhHaNQQ8L8vDKdEY";
let stuck = 211772602;
let stucklounge = -1001388295920;
let subs = 0;
URL.prototype.getArgument = function(name) {
	return this.searchParams.get(name);
}

async function telegramApiRequest(method, args) {
	return await fetch(
		`https://api.telegram.org/bot${telegramBot}/${method}?${args.join("&")}`
	)
	.then((response) => response.json())
	.then((data) => data.result);
}
