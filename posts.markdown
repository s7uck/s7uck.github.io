---
layout: page
title: Posts
listing: true
permalink: /posts
---

{% for post in site.posts %}<article>
	<small>
		<time datetime="{{ post.date }}">{{ post.date | date: "%-d %B %Y" }}</time>
	</small>
	<h2>
		<a href="{{ post.url }}">{{ post.title }}</a>
	</h2>

	<span>
		{{ post.excerpt }}
	</span>

	<ul class="list horizontal">{% for category in post.categories %}
		<span class="chip">{{ category }}</span>{% endfor %}
	</ul>
</article>{% endfor %}

<footer>
	<nav>
		<menu>
			<li><a href="/feed.xml" title="RSS feed"><img src="/images/rss_icon.webp" alt="RSS feed"></a></li>
		</menu>
	</nav>
</footer>