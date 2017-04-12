---
id: 3354
title: yify encoding settings
date: 2014-08-05T20:59:19+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3354
permalink: /2014/08/yify-encoding-settings/
categories:
  - Uncategorized
---
 `cabac=1 / ref=4 / deblock=1:-1:-1 / analyse=0x3:0x133 / me=umh / subme=9 / psy=1 / psy_rd=1.00:0.15 / mixed_ref=1 / me_range=24 / chroma_me=1 / trellis=2 / 8x8dct=1 / cqm=0 / deadzone=21,11 / fast_pskip=0 / chroma_qp_offset=-3 / threads=60 / lookahead_threads=4 / sliced_threads=0 / nr=0 / decimate=1 / interlaced=0 / bluray_compat=0 / constrained_intra=0 / bframes=3 / b_pyramid=2 / b_adapt=2 / b_bias=0 / direct=3 / weightb=1 / open_gop=0 / weightp=2 / keyint=250 / keyint_min=23 / scenecut=40 / intra_refresh=0 / rc_lookahead=60 / rc=2pass / mbtree=1 / bitrate=895 / ratetol=1.0 / qcomp=0.60 / qpmin=0 / qpmax=69 / qpstep=4 / cplxblur=20.0 / qblur=0.5 / vbv_maxrate=31250 / vbv_bufsize=31250 / nal_hrd=none / filler=0 / ip_ratio=1.40 / aq=1:1.00`

Suggested simplified cli could be;

<pre>a good cmdline approx is a 2pass with: 

--preset veryslower --tune film --ref 4 --bframes 3 --subme 9 --vbv-maxrate 31250 --vbv-bufsize 31250 --bitrate 895 </pre>