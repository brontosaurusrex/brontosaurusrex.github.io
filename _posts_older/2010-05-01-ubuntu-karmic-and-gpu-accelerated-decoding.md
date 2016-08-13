---
id: 821
title: ubuntu karmic/lucid and gpu accelerated decoding
date: 2010-05-01T22:24:15+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=821
permalink: /2010/05/ubuntu-karmic-and-gpu-accelerated-decoding/
categories:
  - Uncategorized
---
this 

`mplayer -vo vdpau -vc ffh264vdpau file.mp4 -fs`

will play h.264 1920&#215;1080,25p file on my old rig without a hitch (card is GeForce 9400 GT), and CPU usage seems to be negligible. 

Cpu usage, before & after;
  
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2010/05/before-150x150.png" alt="" title="before" width="150" height="150" class="alignnone size-thumbnail wp-image-826" />](http://brontosaurusrex.69.mu/wp-content/uploads/2010/05/before.png)   [<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2010/05/after-150x150.png" alt="" title="after" width="150" height="150" class="alignnone size-thumbnail wp-image-825" />](http://brontosaurusrex.69.mu/wp-content/uploads/2010/05/after.png)

note: on lucid lynx (eee pc with nvidia ion) i had to :
  
`sudo apt-get install libvdpau1<br />
sudo apt-get install nvidia-current`

tearing, ugly workaround:
  
`sudo nvidia-xconfig --no-composite`
  
then
  
`ctrl + alt + backspace`
  
to restart the x + gnome
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;
  
and to enable compositing again
  
`sudo nvidia-xconfig --composite`
  
(this works for my older karmic setup)

tearing, better workaround:

<pre lang="bash">#!/bin/sh
killall docky
gconftool-2 -s '/apps/metacity/general/compositing_manager' --type bool false

while [ $# -ne 0 ]; do
mplayer -vo vdpau -vc ffh264vdpau "$1" -fs
shift
done

gconftool-2 -s '/apps/metacity/general/compositing_manager' --type bool true
docky > /dev/null &
</pre>

&#8212;&#8211;

edit: actually another (best) way is to disable compositing and turn on the compiz, then in &#8216;CompizConfig settings manager&#8217; find a ticker next to something like &#8216;sync to vblank&#8217; and tick it.

then you can generate mplayer config that preffers vdpau, so gedit ~/.mplayer/config and enter this:
  
<!--more-->

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