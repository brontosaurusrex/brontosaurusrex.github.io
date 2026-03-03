---
published: true
layout: post
date: '2025-05-20 10:00'
title: Client side search
tags: luv 
---
## The Solution

Funny little client-side search added @ [/search](/search)  
The fusion of custom jekyll powered search.json generator and fuse.js.

Big thanks to chatGPT and deepseek for helping here.

Additionally, the SVG logo now includes two links. If you click on the head, it should navigate to the new search page.

p.s. 

 - gziped /search.json is around 260k (and expands to 860k), which I think is more than good enough. Data taken from chrome Network/Headers in Developer tools.
 - SVG logo with 2 links doesn't show transparency correctly when called via object tag, so it's now FAT part of _layouts/default.html, not so good.

<img src="/media/fusejs_logo.png" style="max-width: 20px; height: auto">
<small><a href="https://www.fusejs.io/">Fuse.js</a> config update 2026: <a href="https://www.fusejs.io/examples.html#extended-search">'useExtendedSearch'</a> is now set to true, which makes white space act as an AND operator and pipe ( | ) as an OR operator. To escape white space, use "double quotes".
