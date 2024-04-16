---
layout: page
title: Showcase
---

<style>
	#showcase-grid {
		flex-direction: row;
		flex-wrap: wrap;
		column-gap: 0; row-gap: 0;
	}
	.card {
		justify-content: flex-end;
		min-width: 40%;
		aspect-ratio: 16/9;
		background-color: #333333;
		background-size: cover;
		margin: 0;
		flex-grow: 1;
	}
	.card.big {
		min-width: 60%;
		flex-grow: 2;
	}
	.card figcaption {
		padding: 1.5em;
		background: linear-gradient(transparent, rgba(0, 0, 0, 0.75));
		text-shadow: 0 0 black;
	}
</style>

<section class="full-width">
	<ol class="horizontal list" id="showcase-grid">
		{% for project in site.projects %}
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