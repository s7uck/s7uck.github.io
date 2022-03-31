let socials = {
	telegram: {
		me: 211772602,
		stucklounge: -1001388295920,
		stucklings: -1001565929365,
		portal: -1001542175762,
		bot: '1861542114:AAFEySytSsmFuQ4BslQv22XfBh636O36eNs',
		api: 'https://api.telegram.org/bot',
		history: {}
	},
	github: {
		me: 71439748
	},
	youtube: 'UCVX9qM9QKKpQQ8PXSRWs_NA'
};

function telegramPost(
	channel, messageId,
	accent = '7085B2', darkMode = window.matchMedia('(prefers-color-scheme: dark)').matches ? true : false,
	showComments = false, commentsLimit = 3, userColors = true
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
	let commentsHtml = showComments ? commentsEmbed : '';

	let embedHtml = `<article class='message'>
		${postHtml}
		${commentsHtml}
	</article>`;

	return {
		widget: {
			html: embedHtml
		}
	}
}

function telegramApiRequest(
	method, args,
	then =(data)=> {}
) {
	let result = {};
	fetch(
	`${socials.telegram.api}${socials.telegram.bot}/${method}?${args.join('&')}`
	)
	.then( (response) => { return response.json() } )
	.then( (data) => {
		then(data);
		result = data;
		return result;
	});
};

/* Thanks shishc.at	for the JSON API <3 */
function shishcatGetChannelHistory(
	channel, before = 0, after = 0,
	then =(data)=> {}
) {
	let result = {};
	fetch(
	`https://shishc.at/sprivatetgparser.php?channel=${channel}&before=${before}&after=${after}`
	)
	.then( (response) => { return response.json() })
	.then( (data) => {
		then(data);
		result = data;
		return result;
	});
}

telegramApiRequest(
	'getChatMemberCount',
	[`chat_id=${socials.telegram.stucklounge}`],
	then =(data)=> {
		socials.telegram[`subCount`] = data.result;

		let stuckloungeLink = $('nav.social a.telegram.stucklounge');
		stuckloungeLink.attr('subs', socials.telegram.subCount);
	}
);

shishcatGetChannelHistory(
	`stucklounge`, before = 0, after = 0,
	then =(data)=> {
		socials.telegram[`history`] = data.msgs;

		Object.keys(socials.telegram.history).reverse().forEach(msgId => {
			if (
				!socials.telegram.history[msgId]
				.text?.includes('span dir')
			) {
				let postWidget = telegramPost(`stucklounge`, msgId);
				$('#posts gallery').append(postWidget.widget.html);
			}
		});
	}
);