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
		background-size: cover;
		border-radius: 3px;
		border: 1px solid #101010;
		flex-grow: 1;
	}
	.card.big {
		width: 50%;
		aspect-ratio: 3/2;
	}
	.card figcaption {
		padding: 1.5em;
		background: linear-gradient(transparent, rgba(0, 0, 0, 0.75));
		text-shadow: 0 0 1px black;
		row-gap: 1em;
	}
	.card.big figcaption {
		flex-direction: row;
		justify-content: space-between;
		align-items: center;
	}
</style>

{% assign projects = site.projects | sort: "priority" | reverse %}

<section>
	<ol class="grid" id="showcase-grid">
		{% for project in projects %}
		<li class="card{% if project.highlight %} big{%endif%}" style="background-image: url({{ project.image }})">
			<figcaption>
				<span>
					<h2>{{ project.name }}</h2>
					<span>{{ project.content | remove: "<p>" | remove: "</p>" }}</span>
				</span>
				<menu><a href="{{ project.url }}" title="Link">→</a></menu>
			</figcaption>
		</li>
		{% endfor %}
	</ol>
</section>
