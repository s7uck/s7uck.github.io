---
layout: page
title: Gallery
permalink: /gallery
---

<style>
	main { max-width: 120ch;}
	.card {
		width: 35%;
		padding: 0;
		row-gap: 0;
		overflow: hidden;
		flex-grow: 1;
	}
	.card.big { width: 47.5%;}
	figcaption {
		padding: 1em;
		position: absolute;
		font-family: 'Space Grotesk';
		text-shadow: 0 0 4px black;
	}
	.card img {
		height: 100%;
		object-fit: cover;
	}
</style>

{% assign photos = site.pages | where_exp: "item", "item.dir contains '/photos/'" | sort: "date" | reverse %}

<ol class="grid" id="photo-grid">{% for photo in photos %}
	<li class="card{% if photo.rating >= 4 %} big{% endif %}" onclick="window.location = '{{ photo.url }}'">
		<img src="{{ photo.image }}" alt="{{ photo.title }}">

		<figcaption>
			{% if photo.title %}<big>
				{{ photo.title }}
			</big>{% endif %}
			<small>
				<img class="icon" src="/images/camera.svg" alt="Camera"> {{ photo.camera }} · <img class="icon" src="/images/location.svg" alt="Location"> {{ photo.location }} · {{ photo.date | date: "%-d %B %Y %H:%M" }}
			</small>
		</figcaption>
	</li>{% endfor %}
</ol>
