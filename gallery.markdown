---
layout: page
title: Gallery
permalink: /gallery
---

<style>
	.card {
		width: 40%;
		padding: 0;
		row-gap: 0;
	}
	.card.big {
		flex-grow: 1;
	}
	figcaption { padding: 1em;}
</style>

<ol class="grid" id="photo-grid">
{% for photo in site.photos %}
	<li class="card{% if photo.highlight %} big{%endif%}" onclick="window.location = '{{ photo.url }}'">
		<img src="/photos/{{ photo.image }}" alt="{{ photo.name }}">

		<figcaption>
			<small>
				{{ photo.date | date: "%-d %B %Y" }}
			</small>
			<big>
				{{ photo.name }}
			</big>

			<small>
				<img class="icon invert" src="/images/camera.svg"> {{ photo.camera }} <img class="icon invert" src="/images/forward.svg"> {{ photo.location }}
			</small>
		</figcaption>
	</li>
{% endfor %}
</ol>