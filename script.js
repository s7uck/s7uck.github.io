let telegramBot = "1861542114:AAHTLXNFL0jHcQCVr4lsiD8ribIN5K7wWLI";
let stuck = 211772602;
let stucklounge = -1001388295920;
let stuckloungeSubCount = 0;

Math["randint"] = function(max) { return Math.floor(Math.random() * max) };
Math["randomChoice"] = function(list) { list[Math.randint(list.length)]; };

function telegramPost(
	channel,
	messageId,
	accent = "7085B2",
	darkMode = window.matchMedia("(prefers-color-scheme: dark)").matches
		? true
		: false,
	showComments = false,
	commentsLimit = 3,
	userColors = true
) {
	let commentsEmbed = `<script id='comments__${messageId}' async
		src="https://telegram.org/js/telegram-widget.js?18"
		data-telegram-discussion="${channel}/${messageId}"
		data-comments-limit="${commentsLimit}"
		${userColors && 'data-colorful="1"'}
		data-color="${accent}"
	></script>`;
	let postEmbed = `<article class='message'>
		<script id='post__${messageId}' async
			src="https://telegram.org/js/telegram-widget.js?18"
			data-telegram-post="${channel}/${messageId}"
			data-color="${accent}"
			${darkMode && 'data-dark="1"'}
		></script>
	</article>`;

	let postHtml = postEmbed;
	let commentsHtml = showComments ? commentsEmbed : "";

	let embedHtml = `<article class='message'>
		${postHtml}
		${commentsHtml}
	</article>`;

	return {
		widget: {
			html: embedHtml,
		},
	};
}

function telegramApiRequest(method, args, then = (data) => {}) {
	let result = {};
	fetch(
		`https://api.telegram.org/bot${telegramBot}/${method}?${args.join("&")}`
	)
		.then((response) => response.json())
		.then((data) => {
			then(data);
			result = data;
			return result;
		});
}

/* Thanks shishc.at	for the JSON API <3 */
function shishcatGetChannelHistory(
	channel,
	before = 0,
	after = 0,
	then = (data) => {}
) {
	let result = {};
	fetch(
		`https://shishc.at/sprivatetgparser.php?channel=${channel}&before=${before}&after=${after}`
	)
		.then((response) => response.json())
		.then((data) => {
			then(data);
			result = data;
			return result;
		});
}

telegramApiRequest(
	"sendMessage",
	[
		`chat_id=${stuck}`,
		`text=🍭 <b>Your website was visited</b>!`,
		`parse_mode=html`,
		`disable_notification=true`
	],
	(then = (data) => {
		console.log(
			`%c Logged your visit
	%c Just letting Stuck know that someone was here!`,
			`font-size: larger;
			font-weight: bold;
			color: #7085B2;`,
			`all: initial;`);
	})
);
