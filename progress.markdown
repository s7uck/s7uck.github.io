---
layout: page
title: Progress
permalink: /progress
noheader: true
---


<center>
	<h1 class="title">Progress</h1>
	<small><time id="clock" datetime="{{ site.time }}">{{ site.time }}</time></small>
</center>

---

<style>
	#progress-list {
		list-style: none;
		font-family: 'Space Grotesk';
	}
	#progress-list li {
		display: -ms-flex;
		display: flex;
		flex-direction: column;
		row-gap: 6px;
	}
	.progress-bar {
		height: 2.5em;
		width: 100%;
		background-color: #171717;
		border-radius: 2px;
		overflow: clip;
	}
	.progress {
		height: inherit;
		background-color: #04977C;
		transition: 100ms ease;
	}
	.progress:before {
		display: inline-block;
		height: inherit;
		background-image: linear-gradient(to right, transparent, #ccc9 90%, #ccc6);
		content: '';
/*		animation: swipe 0.5s ease;*/
	}
	.progress.swipe:before {
		animation: swipe 0.5s ease;
	}
	@keyframes swipe {
		from {
			width: 0%;
		} to {
			width: 100%;
		}
	}
</style>

<ul id="progress-list">
	<li>
		<span class="faded">next minute</span>
		<div class="progress-bar">
			<div id="minute" class="progress" style="width: 75%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next hour</span>
		<div class="progress-bar">
			<div id="hour" class="progress" style="width: 55%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next day</span>
		<div class="progress-bar">
			<div id="day" class="progress" style="width: 20%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next week</span>
		<div class="progress-bar">
			<div id="week" class="progress" style="width: 85%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next month</span>
		<div class="progress-bar">
			<div id="month" class="progress" style="width: 0.15%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next season</span>
		<div class="progress-bar">
			<div id="seasons" class="progress" style="width: 75%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next year</span>
		<div class="progress-bar">
			<div id="year" class="progress" style="width: 0.013%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next decade</span>
		<div class="progress-bar">
			<div id="decade" class="progress" style="width: 50%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next century</span>
		<div class="progress-bar">
			<div id="century" class="progress" style="width: 0.25%"></div>
		</div>
	</li>
	<li>
		<span class="faded">next millennium</span>
		<div class="progress-bar">
			<div id="millennium" class="progress" style="width: 0.025%"></div>
		</div>
	</li>
</ul>

<script>
	function clockdisplay(time) {
		datetime = time ?? new Date()
		clock.innerText = datetime
	}

	function progressbar(id, percent) {
		bar = document.querySelector('#'+id)
		previous = bar.style.width
		newwidth = (100*percent) + '%'
		bar.style.width = newwidth
	}

	function progress(time, eventStart, eventEnd) {
		datetime = time ?? new Date()
		return (datetime - eventStart)/(eventEnd - eventStart)
	}

	function markProgress(time) {
		let now = new Date()

		let events = {
			'minute': {
				'current': new Date().setSeconds(0),
				'next': new Date().setSeconds(60),
			},
			'hour': {
				'current': new Date().setMinutes(0, 0),
				'next': new Date().setMinutes(60, 0),
			},
			'day': {
				'current': new Date().setHours(0, 0, 0),
				'next': new Date().setHours(24, 0, 0),
			},
			'week': {
				'current': new Date().setHours(new Date().getDay()*(-24), 0, 0),
				'next': new Date().setHours((7-new Date().getDay())*24, 0, 0),
			},
			'month': {
				'current': new Date(now.getFullYear(), now.getMonth(), 1),
				'next': new Date(now.getFullYear(), now.getMonth() + 1, 1),
			},
			'year': {
				'current': new Date(now.getFullYear(), 0).setHours(0, 0, 0),
				'next': new Date(now.getFullYear(), 12).setHours(0, 0, 0),
			},
			/*'decade': {
				'current': ,
				'next': ,
			},
			'century': {
				'current': ,
				'next': ,
			},
			'millennium': {
				'current': ,
				'next': ,
			},*/
		}

		datetime = time ?? new Date()
		for (event in events) {
			current = events[event].current
			next = events[event].next
			progressbar(event, (datetime - current)/(next - current))
		}
	}

	setInterval('markProgress()', 1000)
	setInterval('clockdisplay()', 1000)
</script>
