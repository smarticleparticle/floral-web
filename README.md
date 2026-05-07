# floral-web

Goto https://kenjimarshall.github.io/floral-web. Based on the Academic Pages template.

## Configuration

* **Site Settings:** General settings like site title and theme are in `_config.yml`.
* **Sidebar Profile:** Edit `author` information in `_config.yml`.
* **Navigation Menu:** Edit `_data/navigation.yml` to add or remove links from the top header. Adding a new page also might mean adding a collection in `_config.yml` and adding a page in `_pages`. 

This repo has a Github Action that will build the site into the `gh-pages` branch. Configure Github Pages to serve the website off of this branch.

## Petals

Adding/removing petals requires some tedious shuffling of class assignments and urls/labels in `_layouts/sunflower_home.html`. There are comments in the source to help.

## Posts

This site uses Jekyll collections and data files to manage content. To add new items, create Markdown files in the corresponding directories with the appropriate front matter.

Name a file ".md" to have it render in markdown, name it ".html" to render in HTML. THe site uses [kramdown](https://kramdown.gettalong.org/index.html) for Markdown rendering, which has some differences from other Markdown implementations such as GitHub's.

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

### 5. Projects (`_projects/`)

```yaml
---
title: "Project Title"
collection: projects
excerpt: "Summary with image: <br/><img src='/images/project-thumb.png'>"
---
Project details...
```

### 6. Fun (`_fun/`)

```yaml
---
title: "Fun title"
collection: fun
---
Whatever you'd **wish**
```

### 6. Static Files (PDFs, Images)

* **Images:** Upload to `images/`. Reference as `/images/your-image.png`.
* **PDFs/Docs:** Upload to `files/`. Reference as `/files/your-file.pdf`.


## Development

The easiest way to run the site is using **Docker Compose**. This ensures all Ruby and JavaScript dependencies are correctly installed and isolated.

### Requirements

* Docker

### Run

1.  **Build and Start:**
    ```bash
    docker-compose up --build
    ```
2.  **Access:** Open `http://localhost:4000` in your browser.

The environment is set up to watch for file changes. When you edit a file on your host machine, the site will automatically rebuild inside the container.

## Troubleshooting

If your site is served with a baseurl (e.g. `<username>.github.io/<repository-name>`), then you should always reference images within posts using the pattern `{{ base_path }}/images/<image-path>`. Otherwise the image will not be found! Same goes for assets and files.
