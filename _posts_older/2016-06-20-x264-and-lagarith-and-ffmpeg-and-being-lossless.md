---
published: true
layout: post
date: '2016-06-20 12:52 +0200'
title: x264 and lagarith and ffmpeg and being lossless
---
This is how you would compare the hash

    ffmpeg -loglevel error -i lossless.mp4 -pix_fmt rgb24 -f md5 -
    MD5=e5c2a75027370d945a736002dced8463
    
    ffmpeg -loglevel error -i lagarith.avi -pix_fmt rgb24 -f md5 -
    MD5=e5c2a75027370d945a736002dced8463
    
cli was

    ffmpeg -i lagarith.avi -pix_fmt rgb24 -vcodec libx264rgb -qp 0 -preset veryslow lossless.mp4
    
but they say that -pix_fmt rgb24 is not doing anything, so it should be

    ffmpeg -i lagarith.avi -c:v libx264rgb -qp 0 -preset veryslow lossless.mp4
