---
published: true
layout: post
date: "2016-03-08 09:27 +0100"
title: OSX sed search and replace
---

search for cdn.scrot and replace with scrot on all files in current dir:

    sed -i '' -e 's/cdn\.scrot/scrot/g' *
    
p.s. Dot is escaped using backslash.
