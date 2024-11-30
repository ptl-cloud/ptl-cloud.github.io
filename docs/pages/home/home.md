---
layout: default
title: Home
permalink: /

banner-image: /assets/images/designer/Pathway_1792x1024.jpeg
banner-text: PTL-Cloud
---

<!-- Latest blog post -->
<div class="w3-margin-top w3-cell-row">
  {% assign post = site.posts.first %}

  <div class="w3-container w3-cell w3-mobile">
    <img src="{{ post.banner-image }}" style="width:100%;">
  </div>

  <div class="w3-container w3-cell w3-mobile">
    <h2 class="w3-center"><a href="/{{ post.url }}">{{ post.title }}</a></h2>
    <p>By {{ post.author }} on {{ post.date | date: "%B %-d, %Y" }}</p>
    {% assign preprocessed_content=post.content | replace: '</h', '.</h' %}
    {% assign cleaned_content=preprocessed_content | strip_html | truncatewords:50 %}
    <p>{{ cleaned_content }}</p>
  </div>

</div>

# About Us

{% include vimeo.html video="530934651?h=a54220f999" %}

<br>
