---
layout: page
title: Showcase
permalink: /showcase
---

<style>
	.card {
		width: 30%;
		flex-grow: 1;
	}
	.card.big {
		min-width: 40%;
		max-width: 70%;
		flex-grow: 2;
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

<ol class="grid" id="showcase-grid">{% for project in projects %}{% if project.started != false %}
	<li class="card{% if project.highlight %} big{%endif%}" style="background-image: url({{ project.image }})">
		<figcaption>
			<span>
				<h2>{{ project.name }}</h2>
				<span>{{ project.content | remove: "<p>" | remove: "</p>" }}</span>
			</span>
			<menu><a href="{{ project.url }}" title="Link"><img class="invert" src="/images/forward.svg"></a></menu>
		</figcaption>
	</li>{% endif %}{% endfor %}
</ol>
