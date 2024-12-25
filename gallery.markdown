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
		overflow: hidden;
		flex-grow: 1;
	}
	.card.big { width: 57%;}
	figcaption { padding: 1em;}
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
			<small>
				{{ photo.date | date: "%-d %B %Y" }}
			</small>
			{% if photo.title %}<big>
				{{ photo.title }}
			</big>{% endif %}

			<small>
				<img class="icon" src="/images/camera.svg" alt="Camera"> {{ photo.camera }} <img class="icon" src="/images/location.svg" alt="Location"> {{ photo.location }}
			</small>
		</figcaption>
	</li>{% endfor %}
</ol>
