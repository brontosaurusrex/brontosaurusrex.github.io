---
published: true
layout: post
date: '2026-05-22 19:26 +0000'
title: "Many markdown files to single html with pandoc"
tags: web 
---
Export each into separated html

    n c chess | pandoc -s -f markdown -t html5 -o tmp/01.htm 
    n c jobs | pandoc -s -f markdown -t html5 -o tmp/02.htm  
    n c pandoc | pandoc -s -f markdown -t html5 -o tmp/03.htm

    cd tmp

merge into one

    pandoc 01.htm 02.htm 03.htm -o all.htm -H style.css -V title="" --metadata=title=" "

There must be a simpler way. (This needs to be a standalone script if functionality is desired.)
