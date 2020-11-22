---
published: true
layout: post
date: '2020-11-22 20:04'
title: Imgur and weserv not working anymore
tags: mine 
---
Due to some image proxy problems, posts with imgur images were sed-ed to remove the proxy link

    grep -rl "https://images.weserv.nl/?url=" . | xargs sed -i 's|https://images.weserv.nl/?url=||'

I don't like it, but that's it for now.
