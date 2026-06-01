---
published: true
layout: post
date: '2026-05-22 19:26 +0000'
title: "Many markdown files to single html"
tags: web 
---
## with pandoc

Export each into separated html

    n c chess | pandoc -s -f markdown -t html5 -o tmp/01.htm 
    n c jobs | pandoc -s -f markdown -t html5 -o tmp/02.htm  
    n c pandoc | pandoc -s -f markdown -t html5 -o tmp/03.htm

    cd tmp

merge into one

    pandoc 01.htm 02.htm 03.htm -o all.htm -H style.css -V title="" --metadata=title=" "

There must be a simpler way. (This needs to be a standalone script if functionality is desired.)

## with md2html


    n c 12 | awk '
    BEGIN { inmeta=0 }

    # toggle frontmatter
    /^---$/ {
        inmeta = !inmeta
        next
    }

    # inside frontmatter
    inmeta {
        if ($1 == "title:") {
            $1=""
            sub(/^ +/, "", $0)
            print "# " $0
        }
        next
    }

    # normal content
    { print }
    ' | md2html -f --github --fpermissive-autolinks > md.htm

and then add some css to md5, like

    <link rel="stylesheet" href="https://unpkg.com/sakura.css/css/sakura.css" media="screen" />
    <link rel="stylesheet" href="https://unpkg.com/sakura.css/css/sakura-dark.css" media="screen and (prefers-color-scheme: dark)" />

    <style>
        p, ul, li   { font-family: "Noto Serif", serif; font-size: large }
        a       { font-family: "Noto Serif", serif; font-size: large }
        pre     { font-size: large; border-radius: 12px; background-color: black;}
        h1      { text-align: center; font-family: 'Noto Sans', sans; font-size: xxx-large }
        h2, h3, h4      { font-family: "Noto Sans", sans; }
    </style>

This ^ actually looks almost good.
