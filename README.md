# PTL-Cloud Website

This repository holds the source for the jekyll.ptl-cloud.com website

Jekyll-based website for Pathway Technologies website experimentation.

The website is hosted on GitLab.com pages.

Development uses a shared `jekyll-builder` Docker image to provide a consistent build environment without requiring Jekyll or Ruby to be installed on the host machine.

## Quick Start

Open an interactive shell:

```bash
./devshell.sh
```

Start the development server with automatic rebuilds:

```bash
./serve.sh
```

The site will be available at:

```
http://localhost:4000
```

Changes to source files are detected automatically and the site is rebuilt.

## Validate

Build and validate the site:

```
./check.sh
```

This performs a clean Jekyll build and reports any build errors.

## Production Build

Generate the final site:

```
./build.sh
```

The generated output is written to:

```bash
public/
```
