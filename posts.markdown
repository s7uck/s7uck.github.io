---
layout: page
title: Posts
listing: true
---

{% for post in site.posts %}
<article>
	<small>
		<time datetime="{{ post.date }}">{{ post.date | date: "%-d %B %Y" }}</time>
	</small>
	<h2>
		<a href="{{ post.url }}">{{ post.title }}</a>
	</h2>

	<span>
		{{ post.excerpt }}
	</span>

	<div class="list horizontal">
		{% for category in post.categories %}
		<span class="chip">{{ category }}</span>
		{% endfor %}
	</div>
</article>
{% endfor %}