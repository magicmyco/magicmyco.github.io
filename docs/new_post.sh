#!/bin/bash

# Get current date, year, and month
DATE=$(date +"%Y-%m-%d")
YEAR=$(date +"%Y")
MONTH=$(date +"%m")

# Get title from user input
echo "Enter the post title:"
read TITLE

echo "Enter the post slug:"
read SLUG

# Create year and month directories if they don't exist
mkdir -p _posts/$YEAR/$MONTH

# Create the file with YAML frontmatter
cat > _posts/$YEAR/$MONTH/$DATE-$SLUG.md <<EOL
---
title: "$TITLE"
permalink: /mushroom_grow_guide/$SLUG
date: $DATE
categories:
  - mushroom-grow-guide
keywords:
description: ""
layout: post
---

EOL
