# Marcos Andrade's Portfolio and Blog

This repository contains my personal portfolio website and blog.

## Structure

- `/` - Main portfolio site (vanilla HTML/CSS/JS)
- `/blog/` - Blog powered by Hugo

## Development

### Portfolio

The main portfolio site is built with vanilla HTML, CSS, and JavaScript. The main files are:
- `index.html` - Main HTML file
- `style.css` - Stylesheet

### Blog

The blog is built with Hugo.

To build the entire site:

```bash
./build.sh
```

This script builds the Hugo blog to the `/blog/` directory while preserving the main portfolio site at the root.

## Deployment

The site is automatically deployed to GitHub Pages when changes are pushed to the main branch.