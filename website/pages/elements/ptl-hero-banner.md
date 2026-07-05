---
layout: default
title: ptl-hero-banner
permalink: /elements/ptl-hero-banner

banner-show: false
---

# Description

`ptl-hero-banner` will add a hero banner to the page. A number of parameters are supported:

- **image** - REQUIRED. The background image file.
- **title** - OPTIONAL. The main banner title, printed with a large font.
- **text** - OPTIONAL. Text printed below the main title with a smaller font.
- **img-position** - OPTIONAL. Defines the vertical orientation of the image. Permitted values are **top** and **bottom**. The image will be vertically centred if this parameter is omitted.

# Example

{% include ptl-hero-banner.html image='/assets/images/designer/Pathway_1792x1024.jpeg' title='A Banner Title' text='Some banner text' %}

- image DEFINED
- title='A Banner Title'
- text='Some banner text'

# Example

A vertically-oriented image has been used for this example. This is an exaggerated example to illustrate the use of the `img-position` parameter.

<div class="w3-margin-top w3-row">

  <div class="w3-container w3-third">
    {% include ptl-hero-banner.html image='/assets/images/designer/20250118_Designer.jpeg' title='Title' %}
    <ul>
      <li>image DEFINED</li>
      <li>title='Title'</li>
    </ul>
  </div>

  <div class="w3-container w3-third">
    {% include ptl-hero-banner.html image='/assets/images/designer/20250118_Designer.jpeg' title='Title' img-position='top' %}
    <ul>
      <li>image DEFINED</li>
      <li>title='Title'</li>
      <li>img-position='top'</li>
    </ul>
  </div>

  <div class="w3-container w3-third">
    {% include ptl-hero-banner.html image='/assets/images/designer/20250118_Designer.jpeg' title='Title' img-position='bottom' %}
    <ul>
      <li>image DEFINED</li>
      <li>title='Title'</li>
      <li>img-position='bottom'</li>
    </ul>
  </div>

</div>

# Example

{% include ptl-hero-banner.html image='/assets/images/designer/20241220_Designer.jpeg' title='An unusually long Banner Title placed over a Pale Image. A second sentence of text to make it even longer.' text='A long banner text placed over a pale image, can be used to test whether the hero banner resizes correctly when the text box is taller than usual' %}

- image DEFINED
- title='Banner Title over a Pale Image'
- text='Some banner text over a pale image'

<p></p>
