# Floral Website

Academic portfolio website based on Academic Pages template.

## Adding Content

This site uses Jekyll collections and data files to manage content. To add new items, create Markdown files in the corresponding directories with the appropriate front matter.

### 1. Blog Posts (`_posts/`)

File name format: `YYYY-MM-DD-title.md`

```yaml
---
title: 'Your Post Title'
date: 2024-01-22
permalink: /posts/2024/01/your-post-title/
tags:
  - tag1
  - tag2
---
Post content goes here...
```

### 2. Publications (`_publications/`)

```yaml
---
title: "Paper Title"
collection: publications
category: manuscripts  # Options: books, manuscripts, conferences
permalink: /publication/YYYY-MM-DD-paper-title
excerpt: 'Short summary for archive page.'
date: YYYY-MM-DD
venue: 'Journal or Conference Name'
paperurl: 'https://link-to-pdf'
citation: 'Your Name, et al. (Year). "Title." Venue.'
---
Detailed description or abstract...
```

### 3. Talks (`_talks/`)

```yaml
---
title: "Talk Title"
collection: talks
type: "Talk"  # e.g., Talk, Tutorial, Keynote
permalink: /talks/YYYY-MM-DD-talk-title
venue: "Venue Name"
date: YYYY-MM-DD
location: "San Francisco, CA, USA"
---
Talk description...
```

### 4. Teaching (`_teaching/`)

```yaml
---
title: "Course Name"
collection: teaching
type: "Undergraduate course" # e.g., Undergraduate course
permalink: /teaching/YYYY-semester-teaching-name
venue: "University Name, Department"
date: YYYY-MM-DD
location: "City, Country"
---
Course description...
```

### 5. Portfolio Items (`_portfolio/`)

```yaml
---
title: "Project Title"
collection: portfolio
excerpt: "Summary with image: <br/><img src='/images/project-thumb.png'>"
---
Project details...
```

### 6. Static Files (PDFs, Images)

* **Images:** Upload to `images/`. Reference as `/images/your-image.png`.
* **PDFs/Docs:** Upload to `files/`. Reference as `/files/your-file.pdf`.

## Customizing the Sidebar & Navigation

* **Sidebar Profile:** Edit `author` information in `_config.yml`.
* **Navigation Menu:** Edit `_data/navigation.yml` to add or remove links from the top header.
* **Site Settings:** General settings like site title and theme are in `_config.yml`.

## Setup Options

You can run this site locally, with Docker, or with Podman.

## Option 1: Native/Local Setup

### Requirements

* Ruby 3.2+
* Bundler1

### Steps

1. Install dependencies: `bundle install`
2. Serve the site: `bundle exec jekyll serve` (or `bundle exec jekyll serve --watch` for auto-reload)
3. Visit `http://localhost:4000`

## Option 2: Docker Setup

### Requirements

* Docker or Podman

### Build

`docker build -t floral-web .`

### Run

```bash
docker run -d \
  --name floral-web \
  -p 4000:4000 \
  -v $(pwd):/usr/src/app \
  -v $HOME:/root \
  floral-web \
  sleep infinity
```

Inside container: `./start.sh`

## Understanding the Build/Serve Split

This setup uses a workaround for a Jekyll quirk:

**The Problem:**

* `jekyll serve -H 0.0.0.0` generates URLs using `0.0.0.0` instead of `localhost`
* This breaks CSS/JS loading in your browser

**The Solution:**

* `jekyll build` generates correct URLs from config files
* `jekyll serve --skip-initial-build` just serves the pre-built files
* `jekyll build --watch` rebuilds when files change

The `start-jekyll.sh` script handles this automatically.
