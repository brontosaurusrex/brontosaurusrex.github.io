---
published: true
layout: post
date: '2017-08-09 16:36 +0200'
title: gsimplecal localized
tags: linux mine 
---
Example

    LC_TIME=en_GB.utf8 gsimplecal
    
(defines language, start of week day, possibly more)

or better, in ~/.config/gsimplecal/config add

    force_lang = en_GB.utf8
