---
published: true
layout: post
date: '2019-07-24 17:39'
title: Watermark
tags: mine
---
## Script

[Watermark script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/watermark), [Background example](https://cdn.scrot.moe/images/2019/07/22/back.png), [Logo example](https://cdn.scrot.moe/images/2019/07/22/logoBunsen2019red.png).

Usage example:

    mkdir test && cd test
    wget https://cdn.scrot.moe/images/2019/07/22/back.png
    wget https://cdn.scrot.moe/images/2019/07/22/logoBunsen2019red.png -O logo.png
    watermark back.png logo.png wall 25
    # Shall generate multiple output compositions
    viewnior --fullscreen --slideshow *wall*

Output of `watermark back.png logo.png wall 15`    
[![wall-plus.md.png](https://cdn.scrot.moe/images/2019/07/22/wall-plus.md.png)](https://cdn.scrot.moe/images/2019/07/22/wall-plus.png)  
The new back + back over alpha method  
[![bunsen-back.md.png](https://cdn.scrot.moe/images/2019/07/24/bunsen-back.md.png)](https://cdn.scrot.moe/images/2019/07/24/bunsen-back.png)  
Debian [Diverse](https://gitlab.com/valessiobrito/artwork/tree/master/Debian/debian-diversity)  
[![divers-back.md.png](https://cdn.scrot.moe/images/2019/07/24/divers-back.md.png)](https://cdn.scrot.moe/images/2019/07/24/divers-back.png)  
Destroyed alpha with some random lines  
[![woot2-destroyedDefault.md.jpg](https://cdn.scrot.moe/images/2019/07/24/woot2-destroyedDefault.md.jpg)](https://cdn.scrot.moe/images/2019/07/24/woot2-destroyedDefault.jpg)  
[![bunsennew-destroyedDefault.md.png](https://cdn.scrot.moe/images/2019/07/25/bunsennew-destroyedDefault.md.png)](https://cdn.scrot.moe/images/2019/07/25/bunsennew-destroyedDefault.png)

## Misc
[Gimp batch.](https://www.gimp.org/tutorials/Basic_Batch/)  
[omg, it's scheme](https://docs.gimp.org/2.10/en/gimp-using-script-fu-tutorial.html)  
> Use Script-Fu Console.

> We suggest you use the Procedure Browser as found in the Help menu. It gives you a detailed list of all commands.

[https://javier.xyz/visual-center/](https://javier.xyz/visual-center/), [MIT source](https://github.com/javierbyte/visual-center/)

[http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782](http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782)
