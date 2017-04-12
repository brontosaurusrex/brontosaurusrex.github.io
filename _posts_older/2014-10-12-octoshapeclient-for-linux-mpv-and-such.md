---
id: 3461
title: OctoshapeClient for linux, mpv and such
date: 2014-10-12T21:32:24+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3461
permalink: /2014/10/octoshapeclient-for-linux-mpv-and-such/
categories:
  - Uncategorized
---
get the client
  
<https://support.octoshape.com/entries/21488922-octoshape-application-client-for-windows-osx-and-linux>

cd
  
mkdir octoshape
  
mkdir octoshape/octoshape1
  
mkdir octoshape/octoshape2 &#8230; ect
  
(unpack the client to all this subfolders)
  
edit setup.xml to include mpv as player, like

<pre>&lt;config EulaAccepted="true" EulaId="1406130.en" EulaMethod="installerwindow" PlayerExec="mpv --geometry=100%:0% --autofit=50%x50% $url"
    Language="en" TempID="Plok_Fevkulskymp_09239452"/&gt;</pre>

a script like

<pre>nice -20 ~/octoshape/octoshape1/OctoshapeClient -url:RTVslo1.vp6 &</pre>

should give you some video.

a separate script to kill stuff is also in order, like;

<pre>pkill -ef /home/ticho/octoshape/octoshape1/OctoshapeClient
pkill -ef /home/ticho/octoshape/octoshape2/OctoshapeClient
pkill -ef /home/ticho/octoshape/octoshape3/OctoshapeClient
</pre>

p.s. This was all google magic, I can&#8217;t locate and decent OctoshapeClient docs.

scrot
  
[<img src="http://b.pwnz.org/wp-content/uploads/2014/10/octoshape_scrot-300x187.png" alt="octoshape_scrot" width="300" height="187" class="aligncenter size-medium wp-image-3467" srcset="http://b.pwnz.org/wp-content/uploads/2014/10/octoshape_scrot-300x187.png 300w, http://b.pwnz.org/wp-content/uploads/2014/10/octoshape_scrot-1024x640.png 1024w, http://b.pwnz.org/wp-content/uploads/2014/10/octoshape_scrot-624x390.png 624w" sizes="(max-width: 300px) 100vw, 300px" />](http://b.pwnz.org/wp-content/uploads/2014/10/octoshape_scrot.png)