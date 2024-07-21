---
layout: page
title: Showcase
permalink: /showcase
---

<style>
	.card {
		width: 30%;
		flex-grow: 1;
		box-shadow: 0 -80px 72px 16px rgba(0,0,0,0.7) inset;
		flex-direction: row;
		align-items: center;
		justify-content: space-between;
	}
	.card.big {
		min-width: 40%;
		max-width: 70%;
		flex-grow: 2;
		aspect-ratio: 3/2;
		flex-direction: column;
		align-items: stretch;
		justify-content: flex-end;
	}
	.card figcaption {
		padding: 0.5em;
		text-shadow: 0 0 1px black;
	}
	.card[onclick] { cursor: pointer;}
</style>

{% assign projects = site.projects | sort: "priority" | reverse %}

<ol class="grid" id="showcase-grid">{% for project in projects %}{% if project.started != false %}
	<li class="card{% if project.highlight %} big{%endif%}"{% if project.image %} style="background-image: url({{ project.image }})"{% endif %}{% if project.layout %} onclick="window.location = '{{ project.url }}'"{% endif %}>
		<figcaption>
			<h2>{{ project.name }}</h2>
			<span>{{ project.content | remove: "<p>" | remove: "</p>" }}</span>
		</figcaption>
		<menu>
			<a href="{% if project.link %}{{ project.link }}{% else %}{{ project.url }}{% endif %}" title="Link"><img class="invert" src="/images/forward.svg"></a>
		</menu>
	</li>{% endif %}{% endfor %}
</ol>