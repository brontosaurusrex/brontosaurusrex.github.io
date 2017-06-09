---
published: true
layout: post
date: '2017-04-25 16:41 +0200'
title: 'Sony a7s luts, s-log2'
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

IRC it can use [ffmpeg filters](https://ffmpeg.org/ffmpeg-filters.html#lut3d-1)?

    -vf lavfi=[ffmpeg_filter_here]
    
And combine this with

> say your 3DLUT transforms it from S-Log/S-Gamut to BT.709/BT.1886; then you'd have to use 

    --vf=format=primaries=bt.709:gamma=bt.1886
