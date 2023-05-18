---
published: true
layout: post
date: '2023-05-18 19:04'
title: Adding hidden, but clickable anchors
tags: web mine 
---
to post and page layouts

files

	_layouts/post.html
	_layouts/page.html

were changed from 'content' to a longer version according to the software and docs found here: <https://github.com/allejo/jekyll-anchor-headings>.

and at the bottom of lanyon css we have this:

    /* by me to hide anchor links next to h2,h3... */

    a.anchors
    {
        text-decoration: none;
        /* color: transparent; */
        opacity: 0;
    }

    a:hover.anchors
    {
        /* color: black; */
        opacity: 100;
    }

to hide the links until mouseover.
