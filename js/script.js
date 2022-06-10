let telegramBot = "1861542114:AAFEySytSsmFuQ4BslQv22XfBh636O36eNs";
let stucklounge = -1001388295920;
stucklounge.__proto__.subCount = 0;

Math["randint"] = max =>
	Math.floor(Math.random() * max);
Math["randomChoice"] = list =>
	list[Math.randint(list.length)];

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
		.then((response) => {
			return response.json();
		})
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
		.then((response) => {
			return response.json();
		})
		.then((data) => {
			then(data);
			result = data;
			return result;
		});
}

telegramApiRequest(
	"getChatMemberCount",
	[`chat_id=${stucklounge}`],
	(then = (data) => {
		stucklounge.__proto__.subCount = data.result;
		sl.setAttribute("subs", stucklounge.subCount);
	})
);
