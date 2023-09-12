---
published: true
layout: post
date: '2017-04-25 16:41 +0200'
title: 'Sony a7s deLUTs, s-log2 (and LUTs in general)'
tags: video
---
[http://www.xdcam-user.com/2014/08/set-of-20-cube-luts-for-the-sony-a7s/](http://www.xdcam-user.com/2014/08/set-of-20-cube-luts-for-the-sony-a7s/)

## Adding to Resolve 14

a. File / project settings / Color Management / Open LUT Folder
b. drop them to some of the allready existed folders (like sony)

man  
[http://documents.blackmagicdesign.com/DaVinciResolve/20170424-d01b5c/DaVinci_Resolve_14_Reference_Manual.pdf](http://documents.blackmagicdesign.com/DaVinciResolve/20170424-d01b5c/DaVinci_Resolve_14_Reference_Manual.pdf)

## 7d c-log?

[http://www.chungdha.nl/?s=c-log](http://www.chungdha.nl/?s=c-log)  
[http://philipbloom.net/blog/clog/](http://philipbloom.net/blog/clog)  
[https://www.youtube.com/watch?v=RmCRhTedXpM](https://www.youtube.com/watch?v=RmCRhTedXpM)

## creating your own

just photoshop  
[https://www.youtube.com/watch?v=BmDy5-RdMng](https://www.youtube.com/watch?v=BmDy5-RdMng)  
with lut buddy  
[https://www.youtube.com/watch?v=o250fownOvE](https://www.youtube.com/watch?v=o250fownOvE)

## stuff

bunch of luts and generator and 4k film grain (also deluts, including s-log2)  
[https://luts.iwltbap.com/](https://luts.iwltbap.com/) (8700, Aspen, Sedona and Arapaho seems all very nice.)

## MPV player

a.
IRC it can use [ffmpeg filters](https://ffmpeg.org/ffmpeg-filters.html#lut3d-1)?

    -vf lavfi=[ffmpeg_filter_here]
    
And combine this with

> say your 3DLUT transforms it from S-Log/S-Gamut to BT.709/BT.1886; then you'd have to use 

    --vf=format=primaries=bt.709:gamma=bt.1886
    
Example that actually does something (if I add --vf=format.. everything looks default...)

    mpv --vf=lavfi=[lut3d=file="luts/F-8700-STD.cube"] Videos/test.mp4
    
b. 
Convert .cube deLUT to icc profile using OpenColorIO tools?  
[http://opencolorio.org/userguide/baking_luts.html#icc-profiles-photoshop](http://opencolorio.org/userguide/baking_luts.html#icc-profiles-photoshop)  
[http://opencolorio.org/userguide/index.html](http://opencolorio.org/userguide/index.html)

and use

    --icc-profile=file.icc

In Debian Stretch this tools are actually in repos

    apt install opencolorio-tools

    
## Adobe Cube LUT Specification

[http://wwwimages.adobe.com/content/dam/Adobe/en/products/speedgrade/cc/pdfs/cube-lut-specification-1.0.pdf](http://wwwimages.adobe.com/content/dam/Adobe/en/products/speedgrade/cc/pdfs/cube-lut-specification-1.0.pdf)

## Calibration vs. Technical vs. Creative Look LUTs

[http://www.lightillusion.com/luts.html](http://www.lightillusion.com/luts.html)

> Calibration LUTs are used to 'correct' display inaccuracies, ensuring any images shown on the calibrated display as accurate as possible - allowing for the underlying capabilities and/or limitations of the display. These are the most important LUTs as their generation has to be performed with very high levels of accuracy, or all images sheen on the 'calibrated' display will be incorrect, causing the inaccuracy to ripple back down the workflow chain.

> Technical LUTs are used to convert between different 'standards', such as from one colour space to another, which should make the LUTs simple to generate accurately.

> Creative LUTs are often referred to as 'Look LUTs' as they are often used to set a look by a DoP on-set during filming, as well as to endow images with a specific look emulation, such as specific traditional film stocks.
