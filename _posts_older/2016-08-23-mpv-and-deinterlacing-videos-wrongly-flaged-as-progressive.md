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
    
## root

The problem actually starts with ffmpeg, which will not detect interlaced cineform stuff as interlaced (my toPRORES script will encode that as progressive), workaround is to force interlaced prores transcoding like this

    ffmpeg -i in.mov -vf "setfield=tff, fieldorder=tff, scale=1920:1080" -c:v prores -profile:v 3 -pix_fmt yuv422p10le -acodec pcm_s16le out.mov
    
p.s. mediainfo still claims that original was progressive and it should not;

    Scan type                                : Interlaced
	Original scan type                       : Progressive
	Scan type, store method                  : Interleaved fields
	Scan order                               : Top Field First
