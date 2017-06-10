---
published: true
layout: post
date: '2017-06-10 18:42 +0200'
title: 'MPV and LUTs experiment, if > then'
---
Mostly considering  
[https://mail.google.com/mail/u/0/#inbox/15c8f84218828a93](https://mail.google.com/mail/u/0/#inbox/15c8f84218828a93)

So the latest master mpv compile user-test-behaviour-thing

    mpv --vf=lavfi=[lut3d=file="luts/F-8700-STD.cube"] Videos/test.mp4
    
applies this creative lut nicely (Not sure if correctly, but there is a difference).
If I add

    --vf=format=primaries=bt.709:gamma=bt.1886
    
everything looks like pass-through (not what I would expect). If I try to convert some lut to icc profile using OpenColorIO tools

    # apt install opencolorio-tools # Debian stretch
    # and
    ociobakelut --lut F-8700-STD.cube --format icc F-8700-STD.icc # possibly wrongly formulated request, missing something?
    # and using that icc in mpv --icc-profile=file.icc
    
again the results are like pass-through, not what I would expect.

Explanation:
- *applied nicely* means that it looks like LUT have been applied
- *not what I would expect* means there is nothing indicating LUT got applied 
    


    

    
