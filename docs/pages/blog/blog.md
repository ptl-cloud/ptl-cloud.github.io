---
layout: default
title: Blog
permalink: /blog/

# The post exerpt is modified to remove html heading before it is displayed in the list, see:
# https://stackoverflow.com/questions/39691139/jekyll-strip-html-but-allow-certain-html-tags
---

# Blog

<div class="w3-mobile" markdown="1">

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <p>By {{ post.author }} on {{ post.date | date: "%B %-d, %Y" }}</p>
      <!-- Excerpt of the post, HTML is stripped but ensure headers have a trailing full stop -->
      {% assign preprocessed_content=post.content | replace: '</h', '.</h' %}
      {% assign cleaned_content=preprocessed_content | strip_html | truncatewords:50 %}
      <p>{{ cleaned_content }}</p>
    </li>
  {% endfor %}
</ul>

</div>
