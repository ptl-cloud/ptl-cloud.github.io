---
layout: default
title: ptl-hero-banner
permalink: /elements/ptl-hero-banner/

banner-show: false
---

# Description

`ptl-hero-banner` supports three image treatments, optional copy, and vertical image positioning. The examples below render the include with each combination.

## Options

| Parameter | Values | Behavior |
| --- | --- | --- |
| `image` | Image path; optional | Adds a banner image. Without it, the standard mode renders a solid-color banner. |
| `title` | Text; optional | Displays the main heading. The text and brand are only rendered when a title is present. |
| `text` | Text; optional | Adds supporting copy below the title. |
| `brand` | Text; optional | Adds a brand line in caption mode (`title-style='caption'`). |
| `image-style` | `cover` (default), `photo` | `cover` crops the image to fill the banner. `photo` shows the whole image, with a blurred, darkened backdrop filling the remaining space. |
| `title-style` | Default, `caption` | Default places copy over the image. `caption` places the image above the copy. |
| `img-position` | `top`, `bottom` | Aligns the image to the top or bottom while it is cropped or contained. The default is centered. |

## Standard banner

The default mode crops the image to fill the banner and places the title and supporting text over it.

{% include ptl-hero-banner.html image='/assets/images/designer/Pathway_1792x1024.jpeg' title='A Banner Title' text='Supporting text sits below the title.' %}

## Image positioning

These examples use a portrait-oriented image so the top, center (default), and bottom alignments are easy to compare.

<div class="w3-row-padding w3-margin-top">
  <div class="w3-half w3-margin-bottom">
    {% include ptl-hero-banner.html image='/assets/images/designer/20250118_Designer.jpeg' title='Top aligned' img-position='top' %}
    <p><code>img-position='top'</code></p>
  </div>
  <div class="w3-half w3-margin-bottom">
    {% include ptl-hero-banner.html image='/assets/images/designer/20250118_Designer.jpeg' title='Centered (default)' %}
    <p>Centered image; no <code>img-position</code> specified.</p>
  </div>
  <div class="w3-half w3-margin-bottom">
    {% include ptl-hero-banner.html image='/assets/images/designer/20250118_Designer.jpeg' title='Bottom aligned' img-position='bottom' %}
    <p><code>img-position='bottom'</code></p>
  </div>
</div>

## Photo treatment

Set `image-style='photo'` to keep the full image visible. A blurred version of the same image fills the surrounding space.

{% include ptl-hero-banner.html image='/assets/images/designer/20250118_Designer.jpeg' image-style='photo' title='Full image, no crop' text='The image stays contained while the backdrop fills the banner.' %}

## Caption layout

Set `title-style='caption'` to separate the image and copy. This mode also supports a `brand` line.

{% include ptl-hero-banner.html image='/assets/images/designer/Pathway_1792x1024.jpeg' title-style='caption' title='A title below the image' text='Supporting copy is easy to read on the solid caption background.' brand='Pathway Technologies Ltd.' %}

## Text without an image

The image is optional. Without one, the standard banner uses its solid background color.

{% include ptl-hero-banner.html title='A simple text banner' text='A title and supporting copy can be used on their own.' %}
