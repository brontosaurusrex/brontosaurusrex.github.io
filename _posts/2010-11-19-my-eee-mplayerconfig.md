---
id: 1066
title: my eee ~/.mplayer/config
date: 2010-11-19T21:32:47+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1066
permalink: /2010/11/my-eee-mplayerconfig/
categories:
  - Uncategorized
---
<pre># Write your default config options here!

font=/usr/share/fonts/truetype/freefont/FreeSans.ttf

# Find subtitle files. (1: load all subs containing movie name)
sub-fuzziness=1

# Set font encoding.
subfont-encoding=unicode

# Set subtitle file encoding.
unicode=yes
utf8=yes

# Set video driver.
# Set video output and codec to prefer VDPAU
vo=vdpau,xv,
vc=ffh264vdpau,ffmpeg12vdpau,ffwmv3vdpau,ffvc1vdpau,


# Use double-buffering. (Recommended for xv with SUB/OSD usage)
double=yes

# Resample the font alphamap. (1: narrow black outline)
ffactor=1

# Set subtitle position. (100: as low as possible)
subpos=100

# Set subtitle alignment at its position. (2: bottom)
subalign=2

# Set font size. (2: proportional to movie width)
subfont-autoscale=2

# Set font blur radius. (default: 2)
subfont-blur=2.0

# Set font outline thickness. (default: 2)
subfont-outline=1.0

# Set autoscale coefficient. (default: 5)
subfont-text-scale=3.0

# OSD
#====

# Set autoscale coefficient. (default: 6)
subfont-osd-scale=4.4
</pre>