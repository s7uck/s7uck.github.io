---
layout: page
title: Gallery
permalink: /gallery
---

<style>
	.card {
		min-width: 40%;
		flex-grow: 1;
		padding: 0;
		row-gap: 0;
	}
	.card.big {
		width: 60%;
		flex-grow: 2;
	}
	figcaption { padding: 1em;}
</style>

<ol class="grid" id="photo-grid">
{% for photo in site.photos %}
	<li class="card" onclick="window.location = '{{ photo.url }}'">
		<img src="/photos/{{ photo.image }}" alt="{{ photo.name }}">
		<figcaption>
			<small>{{ photo.date | date: "%-d %B %Y" }}</small>
			<h2>{{ photo.name }}</h2>
			<small><img class="icon invert" src="/images/camera.svg"> {{ photo.camera }} <img class="icon invert" src="/images/forward.svg"> {{ photo.location }}</small>
		</figcaption>
	</li>
{% endfor %}
</ol>