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

	function progressbar(bar, percent) {
		bar.style.width = (100*percent) + '%'
	}

	function markProgress(time) {
		datetime = time ?? new Date()
		currentMonth = new Date(datetime.getFullYear(), datetime.getMonth(), 1)
		nextMonth = new Date(datetime.getFullYear(), datetime.getMonth() + 1, 1)
		currentMonth.setDate(1)
		nextMonth.setDate(1)
		currentYear = new Date(datetime.getFullYear(), 0)
		nextYear = new Date(datetime.getFullYear(), 12)
		progressbar(minute, datetime.getSeconds()/60)
		progressbar(hour, datetime.getMinutes()/60)
		progressbar(day, datetime.getHours()/24)
		progressbar(week, datetime.getDay()/7)
		progressbar(month, (datetime - currentMonth)/(nextMonth - currentMonth))
		progressbar(year, (datetime - currentYear)/(nextYear - currentYear))
	}

	setInterval('markProgress()', 1000)
	setInterval('clockdisplay()', 1000)
</script>
