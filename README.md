# travis-md.github.io

Personal site and content library. Built with Astro, deployed automatically to GitHub Pages on every push to main.

**Live site:** https://travis-md.github.io

## Adding or editing content

Articles live in `src/content/articles/` as plain markdown files. Each file needs frontmatter at the top:

```markdown
---
title: "Your Article Title"
date: "2026-05-01"
description: "One sentence summary."
---

Article content goes here...
```

To publish a change:

```bash
git add .
git commit -m "add: article title"
git push
```

GitHub Actions builds and deploys automatically. Live in about 60 seconds.

## Local development

```bash
npm install
npm run dev
```

Site runs at `http://localhost:4321`.

## Stack

- [Astro 6](https://astro.build) — static site generator
- GitHub Actions — CI/CD
- GitHub Pages — hosting
