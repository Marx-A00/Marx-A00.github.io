#!/bin/bash

# Clear the blog directory if it exists
if [ -d "blog" ]; then
  rm -rf blog
fi

# Build the Hugo site (this will output to the blog directory as configured in hugo.toml)
hugo

# Ensure asset directories exist
mkdir -p blog/css blog/js

# Copy asset files
cp assets/css/style.css blog/css/
cp assets/js/main.js blog/js/

# Ensure index.html and style.css exist in the root
# If public has them, use those, otherwise create a symlink to original files
if [ -f "public/index.html" ] && [ -f "public/style.css" ]; then
  cp public/index.html index.html
  cp public/style.css style.css
  echo "Main portfolio files preserved (from public)."
elif [ ! -f "index.html" ] || [ ! -f "style.css" ]; then
  echo "Error: index.html or style.css not found in root or public directory!"
  exit 1
else
  echo "Using existing index.html and style.css in root."
fi

# Double check that files exist
if [ ! -f "index.html" ]; then
  echo "ERROR: index.html is missing from root directory!"
  exit 1
fi

if [ ! -f "style.css" ]; then
  echo "ERROR: style.css is missing from root directory!"
  exit 1
fi

echo "Build complete. Your portfolio is at / and your blog is at /blog/" 