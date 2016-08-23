---
published: true
layout: post
date: '2016-08-23 12:54 +0200'
title: mpv and deinterlacing videos wrongly flaged as progressive
---
One would think that

    --vf=yadif=field --deinterlace=yes
    
should do the magic, but you actually need

    --vf=yadif=field --field-dominance=top
    # --field-dominance=auto will NOT do the trick.    

