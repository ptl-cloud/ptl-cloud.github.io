---
layout: default
title: Home
permalink: /

banner-image: /assets/images/designer/Pathway_1792x1024.jpeg
banner-image-style: cover
banner-title-style: caption
banner-title: A website for testing ideas to use with Jekyll
banner-brand: Pathway Technologies Ltd.
---

<div class="w3-container w3-margin-top">

  <!-- Latest Blog Post -->
  {% assign post = site.posts.first %}
  {% include ptl-post-feature.html post=post label="Latest article" %}

  <!-- Positioning / About -->
  <section class="ptl-home-about">
    <h2>About Pathway Technologies</h2>

    <p>
      Pathway Technologies supports engineering organisations working in
      safety-critical and regulated environments. We focus on delivering
      practical, structured solutions that improve compliance, traceability,
      and long-term maintainability.
    </p>

    <p>
      Our approach combines deep engineering experience with a strong emphasis
      on deterministic workflows, enabling teams to move faster while meeting
      regulatory obligations with confidence.
    </p>

    <a href="/about/">Learn more →</a>
  </section>

</div>
