---
published: true
layout: post
date: '2019-07-22 17:39'
title: Watermark, updated
tags: 
---

## Concept

    #!/bin/bash

    # watermark one image with another

    # usage: watermark back.png logo.png

    #http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782

    back="$1"
    logo="$2"

    pct=20            

    amt=$(convert -ping "$back" -format "%[fx:$pct*min(w,h)/100]" info:)
    convert "$back" \( $logo -resize $amt \) -gravity center -compose over -composite watermarked.png

[http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782](http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782)

## Update, script

[Watermark script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/watermark), [Background example](https://cdn.scrot.moe/images/2019/07/22/back.png), [Logo example](https://cdn.scrot.moe/images/2019/07/22/logoBunsen2019red.png).

    mkdir test && cd test
    wget https://cdn.scrot.moe/images/2019/07/22/back.png
    wget https://cdn.scrot.moe/images/2019/07/22/logoBunsen2019red.png -O logo.png
    watermark back.png logo.png wall 25
    viewnior --fullscreen --slideshow *wall*

Output of `watermark back.png logo.png wall 15`    
[![wall-plus.md.png](https://cdn.scrot.moe/images/2019/07/22/wall-plus.md.png)](https://cdn.scrot.moe/images/2019/07/22/wall-plus.png)  
The new back + back over alpha method  
[![bunsen-back.md.png](https://cdn.scrot.moe/images/2019/07/24/bunsen-back.md.png)](https://cdn.scrot.moe/images/2019/07/24/bunsen-back.png)


## Future
[Gimp batch.](https://www.gimp.org/tutorials/Basic_Batch/)

> We suggest you use the Procedure Browser as found in the Help menu. It gives you a detailed list of all commands.

[https://javier.xyz/visual-center/](https://javier.xyz/visual-center/), [source](https://github.com/javierbyte/visual-center/)
