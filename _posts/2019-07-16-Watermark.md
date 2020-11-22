---
published: true
layout: post
date: '2019-08-11 17:39'
title: Watermark
tags: mine
---
## Script

[Watermark script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/watermark), [Background example](https://i.imgur.com/fxxMha5.jpg), [Logo example](https://i.imgur.com/WQj80Ny.png).

Usage example:

    watermark back.jpg logo.png wall 25
    # Shall generate multiple output compositions
    viewnior --fullscreen --slideshow *wall*

Output of `watermark back.jpg logo.png wall 15`    
[![wall-plus.png-jmb5QKqyuxkmLAm-md](https://i.imgur.com/OEvIe6ul.jpg)](https://i.imgur.com/OEvIe6u.jpg)
 
The new back + back over alpha method  
[![bunsen-back.png-ILroNpdGCe8zxnq-md](https://i.imgur.com/iSHVzXDl.jpg)](https://i.imgur.com/iSHVzXD.jpg)  
Debian [Diverse](https://gitlab.com/valessiobrito/artwork/tree/master/Debian/debian-diversity)  
[![divers-back.png-Fx6HKUf9l2LctUo-md](https://i.imgur.com/WiOrbkMl.jpg)](https://i.imgur.com/WiOrbkM.jpg)  
Destroyed alpha with some random lines  
[![woot2-destroyedDefault.jpg-YWo6q4DzENH6jrc-md](https://i.imgur.com/KxpFughl.jpg)](https://i.imgur.com/KxpFugh.jpg)  
[![bunsennew-destroyedDefault.png-ztPNJUpFN5KMPAA-md](https://i.imgur.com/GmoPqjOl.jpg)](https://i.imgur.com/GmoPqjO.jpg)  
[![test9-destroyedDefault.jpg-tvlRmP6ljqWmQDv-md](https://i.imgur.com/8pNz33ul.jpg)](https://i.imgur.com/8pNz33u.jpg)

## FIXME

~~Option to skip logo resizing ( 0 in cli could be the trigger for that).~~ Fixed.  
Make function 'many' reusable for all actions. (There seems to be a problem with passing array as function positional parameter)

## Attribution

Bunsen logo by [Ututo](https://forums.bunsenlabs.org/viewtopic.php?pid=40614#p40614) under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) / modified from original.

## Misc
[Gimp batch.](https://www.gimp.org/tutorials/Basic_Batch/)  
[omg, it's scheme](https://docs.gimp.org/2.10/en/gimp-using-script-fu-tutorial.html)  
> Use Script-Fu Console.  

[Gimp Python](https://www.gimp.org/docs/python/index.html).

> We suggest you use the Procedure Browser as found in the Help menu. It gives you a detailed list of all commands.

[https://javier.xyz/visual-center/](https://javier.xyz/visual-center/), [MIT source](https://github.com/javierbyte/visual-center/)

[http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782](http://www.imagemagick.org/discourse-server/viewtopic.php?t=33782)
