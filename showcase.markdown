---
layout: page
title: Showcase
permalink: /showcase
---

<style>
	.card {
		justify-content: flex-end;
		width: 30%;
		aspect-ratio: 3/2;
		background-color: #333333;
		background-size: cover;
		margin: 0;
		flex-grow: 1;
	}
	.card.big {
		min-width: 50%;
		max-width: 70%;
		aspect-ratio: 16/9;
	}
	.card figcaption {
		padding: 1.5em;
		background: linear-gradient(transparent, rgba(0, 0, 0, 0.75));
		text-shadow: 0 0 black;
	}
</style>

{% assign projects = site.projects | sort: "priority" | reverse %}

<section class="full-width">
	<ol class="grid" id="showcase-grid">
		{% for project in projects %}
		<li class="card{% if project.highlight %} big{%endif%}" style="background-image: url({{ project.image }})">
			<figcaption>
				<h3>{{ project.name }}</h3>
				<span>{{ project.content | remove: "<p>" | remove: "</p>" }}</span>
				<a href="{{ project.url }}" title="Link">→</a>
			</figcaption>
		</li>
		{% endfor %}
	</ol>
</section>
