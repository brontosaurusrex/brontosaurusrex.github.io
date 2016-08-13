---
id: 277
title: flvplayer.php
date: 2007-06-11T13:48:52+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070611-064852
permalink: /2007/06/flvplayer-php/
categories:
  - video, web
---
<!--more-->This is a simple php script that enables playback of some flash compatible video files from a folder.

**get it here:**
  
<a href="/downloads/flvplayer_php_js_koda/se/" target="_blank">/downloads/flvplaye &#8230; s_koda/se/</a>
  
(ver 39se is stable/recommended)

docs are in &#8216;player root/docs&#8217;.

screenshots, ver 39se:
  
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2007/06/Screenshot-player39betterdocs-Chromium-300x276.png" alt="" title="Screenshot-:: player39betterdocs - Chromium" width="300" height="276" class="alignnone size-medium wp-image-764" />](http://brontosaurusrex.69.mu/wp-content/uploads/2007/06/Screenshot-player39betterdocs-Chromium.png)
  
_front page with thumbs_
  
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2007/06/Screenshot-02_bbb_insane-x640y352.mp4-player39betterdocs-Chromium-300x276.png" alt="" title="Screenshot-02_bbb_insane-x640y352.mp4 :: player39betterdocs - Chromium" width="300" height="276" class="alignnone size-medium wp-image-763" />](http://brontosaurusrex.69.mu/wp-content/uploads/2007/06/Screenshot-02_bbb_insane-x640y352.mp4-player39betterdocs-Chromium.png)
  
_player_
  
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2007/06/40seBeta-300x187.jpg" alt="" title="40seBeta" width="300" height="187" class="alignnone size-medium wp-image-1773" />](http://brontosaurusrex.69.mu/wp-content/uploads/2007/06/40seBeta.jpg)
  
_40se beta with the (very slight) concept of pages_

bugs:
  
_filter property should really be urlencoded, otherwise validator will raise silly &#8216;entity x&#8217; errors (how relevant is this today is not known to /me, since most browsers should really support this kind of paths) &#8211; considering this as cosmetics.
  
_ 

p.s. flash part is (c) by [longtailvideo](http://www.longtailvideo.com/players/jw-flv-player/), so you better check the license for that part.

p.s.2. **simple chapters**, seek to example (use /notes/file.ext.txt for that):

<pre lang="html"><a href="#" onclick="document.getElementById('single').sendEvent('SEEK', 0);">start</a> | 
<a href="#" onclick="document.getElementById('single').sendEvent('SEEK', 84);">intro</a> | 
<a href="#" onclick="document.getElementById('single').sendEvent('SEEK', 159);">sound</a></pre>