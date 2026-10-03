---
layout: default
title: ptl-hero-banner
permalink: /elements/ptl-hero-banner/

banner-show: false
---

# Hero Banner

The `ptl-hero-banner` include creates a responsive banner with optional imagery and up to two lines of text. Use `title-style` to choose whether the copy overlays the image or sits below it.

## Options

| Option | Values | Default | Behavior |
| --- | --- | --- | --- |
| `title-style` | `overlay`, `caption` | `overlay` | `overlay` places white text over the banner image. `caption` places a separate text area below the image. |
| `image` | Image path or omitted | Omitted | Adds the banner image. When omitted, the banner is a solid light-green area. |
| `title` | Text or omitted | Omitted | Primary heading. It is replaced by `brand` when `brand` is provided. |
| `text` | Text or omitted | Omitted | Optional secondary line, displayed even when neither `title` nor `brand` is set. Text can wrap on smaller screens. |
| `brand` | Text or omitted | Omitted | Replaces `title` as the primary heading in either title style. With `title-style='caption'`, also displays the Pathway Technologies logo. |
| `image-style` | `cover`, `photo` | `cover` | `cover` crops the image to fill the banner. `photo` keeps the full image visible and fills the remaining area with a blurred, darkened version of that image. |
| `img-position` | `top`, `center`, `bottom` | `center` | Sets the vertical crop alignment when `image-style='cover'`. It has no effect with `photo`. |

## Text Behavior

- At most two text fields appear: the primary heading (`brand` or `title`) and the optional `text` line.
- If both `title` and `brand` are supplied, only `brand` is used as the primary heading.
- `text` is independent of the primary heading and can be used by itself.
- In caption style, the company logo appears only when `brand` is supplied.
- Without an image, either title style uses the same solid light-green banner background.

## Cover Image Position

Cover crops the image to fill the banner. `img-position` controls which vertical part of the image remains visible. These examples use the generated image of an adult Chinese woman working at a computer; each changes only the crop position.

### Top

**Values:**
- `title-style='overlay'`
- `image-style='cover'`
- `img-position='top'`
- `image='/assets/images/pexels/pexels-silverkblack-39853312.jpg'`
- `title='Top crop'`
- `text` omitted
- `brand` omitted

{% include ptl-hero-banner.html image='/assets/images/pexels/pexels-silverkblack-39853312.jpg' title-style='overlay' image-style='cover' img-position='top' title='Top crop' %}

### Center

**Values:**
- `title-style='overlay'`
- `image-style='cover'`
- `img-position='center'` (default)
- `image='/assets/images/pexels/pexels-silverkblack-39853312.jpg'`
- `title='Centered crop'`
- `text` omitted
- `brand` omitted

{% include ptl-hero-banner.html image='/assets/images/pexels/pexels-silverkblack-39853312.jpg' title-style='overlay' image-style='cover' img-position='center' title='Centered crop' %}

### Bottom

**Values:**
- `title-style='overlay'`
- `image-style='cover'`
- `img-position='bottom'`
- `image='/assets/images/pexels/pexels-silverkblack-39853312.jpg'`
- `title='Bottom crop'`
- `text` omitted
- `brand` omitted

{% include ptl-hero-banner.html image='/assets/images/pexels/pexels-silverkblack-39853312.jpg' title-style='overlay' image-style='cover' img-position='bottom' title='Bottom crop' %}

## Caption With Brand

Caption style places copy below the image. Here, both `title` and `brand` are supplied to demonstrate precedence: the brand is the visible heading, and the company logo appears alongside the caption. The supporting `text` is the second line.

**Values:**
- `title-style='caption'`
- `image-style='cover'`
- `img-position='center'` (default)
- `image='/assets/images/designer/Pathway_1792x1024.jpeg'`
- `title='This title is replaced'`
- `brand='Pathway Technologies Ltd.'`
- `text='Engineering for safety-critical and regulated systems.'`

{% include ptl-hero-banner.html image='/assets/images/designer/Pathway_1792x1024.jpeg' title-style='caption' image-style='cover' img-position='center' title='This title is replaced' brand='Pathway Technologies Ltd.' text='Engineering for safety-critical and regulated systems.' %}

## Caption With Photo

The photo treatment also works with caption style. The full image is contained and centered above the caption, with its blurred background behind it. `img-position` does not apply to photo style.

**Values:**
- `title-style='caption'`
- `image-style='photo'`
- `img-position` unused
- `image='/assets/images/pexels/pexels-silverkblack-39853312.jpg'`
- `title` omitted
- `brand='Pathway Technologies Ltd.'`
- `text='An optional second line can wrap on mobile.'`

{% include ptl-hero-banner.html image='/assets/images/pexels/pexels-silverkblack-39853312.jpg' title-style='caption' image-style='photo' brand='Pathway Technologies Ltd.' text='An optional second line can wrap on mobile.' %}

## Without an Image

The image is optional. The banner keeps its light-green background whether the text overlays the banner area or appears in the caption area.

### Overlay Text Only

**Values:**
- `title-style='overlay'`
- `image` omitted
- `image-style='cover'` (default, unused)
- `img-position='center'` (default, unused without a cover image)
- `title='A simple text banner'`
- `text='A title and supporting copy can be used on their own.'`
- `brand` omitted

{% include ptl-hero-banner.html title-style='overlay' title='A simple text banner' text='A title and supporting copy can be used on their own.' %}

### Caption Brand Only

**Values:**
- `title-style='caption'`
- `image` omitted
- `image-style='cover'` (default, unused)
- `img-position='center'` (default, unused without a cover image)
- `title='This title is replaced'`
- `brand='Pathway Technologies Ltd.'`
- `text` omitted

The logo appears because caption style and brand are both selected.

{% include ptl-hero-banner.html title-style='caption' title='This title is replaced' brand='Pathway Technologies Ltd.' %}