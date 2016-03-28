---
id: 223
title: folenc.bat
date: 2007-08-27T16:25:57+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070827-092557
permalink: /2007/08/folenc-bat/
categories:
  - video, software, downloads
---
<a href="/downloads/folenc_bat/folenc_v2.zip" target="_blank" >/downloads/folenc_bat/folenc_v2.zip</a>

simple working encoding prototype of a system that waits for avisynth script to be put in a certain folder and starts encoding when found automagically. This way you can use two (or more machines), on first you would prepare your avisynth scripts, on 2nd you would run that system&#8230;, also this will kinda work also for multiple encoders with some human guidance.

assumptions:  
1. all machines use the same paths to media and plugins  
2. some paths are hardcoded (change that before use)  
3. nodes distribution is manual, like:  
&#8211; put into folder 01\_zakodiranje\_avs some avs scripts and wait until one of the nodes will get it into action  
&#8211; put into the same folder some more avs scripts and wait until next node will take it  
&#8211; ect&#8230;  
(there is no checking what nodes do, so there is certain amount of possibility for some sort of collision, either while collecting avs scripts or while outputing final encodes. Also node doesn't know what the other nodes are doing)  
4. machines are in gigabit network.

ok, this may sound pretty dumb, but it is atually pretty simple to use and does work fine in real world. :) 

p.s. the system uses my other batch called flvenc, which you can also grab here:  
<a href="http://blog.somestuff.org/index.php?entry=entry070622-140254" target="_blank" >http://blog.somestuff.org/index.php?ent &#8230; 622-140254</a>  
(but should be easily manipulated to use whatever cli encoder)

changelog:  
v2 &#8211; only the first found avs file is now taken into the next step by each node