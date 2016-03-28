---
id: 2646
title: Crunchbang waldorf on Asus eee 1201n, notes
date: 2013-06-30T01:44:40+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2646
permalink: /2013/06/crunchbang-waldorf-on-asus-eee-1201n-notes/
categories:
  - Uncategorized
---
+ = add
  
&#8211; = remove
  
c = configure
  
b = bug ?

+ printer support
  
+ libreoffice
  
&#8212;
  
+ chrome browser
  
+ filezilla
  
c fonts enlarged +1
  
c windows on CIMLS
  
+ inkscape
  
+ tuxpaint
  
+ inxi
  
c .conkyrc
  
+ nvidia drivers http://crunchbang.org/forums/viewtopic.php?id=19332
  
c /etc/apt sources.list & preferences
  
update installs new vlc from deb.multimedia and some other stuff
  
+ mplayer mplayer2 ffmpeg
  
+ .themes .icons
  
c configure thunar
  
&#8211; clipit
  
c tint2
  
c mplayer2 conf to be vdpau aware
  
+ test vdpau acceleration with mplayer2 (working)
  
b tearing with compton, no tearing without it
  
+ plank
  
c plank
  
b missing chrome.desktop?
  
+ chrome.desktop (now the icon in plank looks good)
  
c gimp (single-window mode)
  
c tuxpaint-config (full screen mode)
  
+ mypaint
  
c wifi
  
+ synapse
  
+ gpick
  
+ smplayer
  
c smplayer (to use vdpau)
  
+ xfce4-appfinder
  
c disable touchpad when mice is present
  
http://crunchbang.org/forums/viewtopic.php?pid=318475#p318475
  
+ audacity deadbeef lxtask gnome-font-viewer
  
+ supertuxcart neverball
  
c openbox menu

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;

sources:

`## CRUNCHBANG<br />
## Compatible with Debian Wheezy, but use at your own risk.<br />
deb http://packages.crunchbang.org/waldorf waldorf main<br />
#deb-src http://packages.crunchbang.org/waldorf waldorf main</p>
<p>## DEBIAN<br />
deb http://http.debian.net/debian wheezy main contrib non-free<br />
#deb-src http://http.debian.net/debian wheezy main contrib non-free</p>
<p>## DEBIAN SECURITY<br />
deb http://security.debian.org/ wheezy/updates main<br />
#deb-src http://security.debian.org/ wheezy/updates main</p>
<p>## backports?<br />
deb http://ftp.debian.org/debian/ wheezy-backports main</p>
<p>## b debian multimedia<br />
deb [arch=amd64,i386] http://deb-multimedia.org wheezy main non-free</p>
<p>## b mkv<br />
deb http://www.bunkus.org/debian/wheezy/ ./<br />
deb-src http://www.bunkus.org/debian/wheezy/ ./</p>
<p>preferences:</p>
<p>Package: *<br />
Pin: release a=waldorf<br />
Pin-Priority: 1001</p>
<p>Package: *<br />
# Pin: release a=wheezy-backports<br />
# Pin-Priority: 900<br />
# no, you should really not pin backport that high!</p>
<p>Package: *<br />
Pin: release a=wheezy<br />
Pin-Priority: 500`