---
published: true
layout: post
date: '2018-06-07 12:27 +0200'
title: xmlescape bash
tags:
  - bash
---
    xmlescape () {
        echo "$@" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'
    }

    xmlescape "&"

should return

    &amp;
    
[https://stackoverflow.com/questions/12873682/short-way-to-escape-html-in-bash](https://stackoverflow.com/questions/12873682/short-way-to-escape-html-in-bash)

	