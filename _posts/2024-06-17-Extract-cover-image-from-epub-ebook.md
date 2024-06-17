---
published: true
layout: post
date: '2024-06-17 14:51'
title: Extract cover image from epub ebook
tags: cli books linux bash 
---
It may extract multiple images, not perfect in any sense:

    file=book.epub
    unzip "$file" "$(zipinfo -1 $file | grep -i cover | grep -E '\.jpg|\.jpeg|\.png')"

p.s. epub may not have any cover.
