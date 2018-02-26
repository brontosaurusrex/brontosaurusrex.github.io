---
published: true
layout: post
date: '2018-02-26 22:06 +0100'
title: foobar2000 and wine in stretchbang
---
### Install

	wine foobar installer.exe
    winecfg # stuff, like installing luna theme
    winetricks settings fontsmooth=rgb # enable font smoothing

### Make launcher (pipe menu)

	foobar2000, wine ~/.wine/drive_c/Program\ Files\ \(x86\)/foobar2000/foobar2000.exe
    
### Configure Foobar

In _preferences/Default User Interface_ add custom column for track replaygain with pattern

	%replaygain_track_gain%
    
Now you can select it in playlist view (right mice button on the top, stuff ...). In preferences set all fonts to cuprum (9).

![foobar2018-fs8.png]({{site.baseurl}}/media/foobar2018-fs8.png)


	


