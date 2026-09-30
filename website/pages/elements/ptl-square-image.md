---
layout: default
title: ptl-square-image
permalink: /elements/ptl-square-image/

banner-show: false
---

# Square Image

Use `ptl-square-image` to fit an image to a square

<div class="w3-margin-top w3-row">

  <div class="w3-container w3-half">
    <div class="w3-card-4">
      <img src="{{ '/assets/images/designer/Pathway_1792x1024.jpeg' | relative_url }}" alt="A scenic path beside a lake and mountains" width="100%">
      {% highlight html %}<img src="picture.jpeg" alt="Describe the image" width="100%">{% endhighlight %}
    </div>
  </div>

  <div class="w3-container w3-half">
    <div class="w3-card-4">
      <img src="{{ '/assets/images/designer/Pathway_1792x1024.jpeg' | relative_url }}" alt="A scenic path beside a lake and mountains" class="ptl-square-image">
      {% highlight html %}<img src="picture.jpeg" alt="Describe the image" class="ptl-square-image">{% endhighlight %}
    </div>
  </div>

</div>

