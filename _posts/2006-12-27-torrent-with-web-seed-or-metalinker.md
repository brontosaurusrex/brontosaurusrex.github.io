---
id: 349
title: torrent with web seed ? or metalinker ?
date: 2006-12-27T16:16:49+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry061227-081649
permalink: /2006/12/torrent-with-web-seed-or-metalinker/
categories:
  - web, guide
---
<a href="http://forums.degreez.net/viewtopic.php?t=6983&#038;highlight=web+seed" target="_blank" >http://forums.degreez.net/viewtopic.php &#8230; t=web+seed</a>

this online tool seems to do something to add http seeds  
<a href="http://dehacked.2y.net/BT/MakeWebSeedCGI.php" target="_blank" >http://dehacked.2y.net/BT/MakeWebSeedCGI.php</a>

&#8212;&#8212;&#8212;&#8212;

alternative, **metalinker**  
<a href="http://www.metalinker.org" target="_blank" >http://www.metalinker.org</a>  
<a href="http://getright.invisionzone.com/index.php?showtopic=311" target="_blank" >http://getright.invisionzone.com/index. &#8230; wtopic=311</a>  
tools;  
**offline**  
<a href="http://prog.infosnel.nl/metalinks/" target="_blank" >http://prog.infosnel.nl/metalinks/</a>, guide <a href="http://www.osresources.com/3_18_en.html" target="_blank" >http://www.osresources.com&#8230;</a>  
**online**  
<a href="http://www.metalinker.org/generator/" target="_blank" >http://www.metalinker.org/generator/</a>

my try, generated with the **online** tool;  
<a href="http://somestuff.org/risbe/slon.metalink" target="_blank" >http://somestuff.org/risbe/slon.metalink</a>  
(you have to add .htaccess file to the metalink dir with the following info:   
`AddType application/metalink+xml metalink` )

example generated with **offline** tools;  
<a href="http://somestuff.org/risbe/miska.metalink" target="_blank" >http://somestuff.org/risbe/miska.metalink</a>  
(command line used was:  
`echo <a href="http://somestuff.org/risbe/" target="_blank" >http://somestuff.org/risbe/</a> | metal -d md5 miska_paper.swf` )  
but better would be;  
`echo us % <a href="http://somestuff.org/risbe/" target="_blank" >http://somestuff.org/risbe/</a> | metal -d md5 miska_paper.swf > miska.metalink`

&#8212;&#8212;&#8212;&#8212;

**multiple mirrors and offline** tools;  
make a file called 'mirrors.txt':  
`us % <a href="http://somestuff.org/risbe/" target="_blank" >http://somestuff.org/risbe/</a><br />si 15 % <a href="http://arnes.si/risbice/" target="_blank" >http://arnes.si/risbice/</a>`

run metatools like:  
`metal -d md5 miska_paper.swf < mirrors.txt > miska.metalink`

_p.s.</p> 

bad stuff of metalinks;  
xml file is user readable and provides exact links to files, so there is no way to define server loads.

bad stuff of torrents;  
pretty complicated

todo on metalinks;  
javascript metalink generator would be really fancy  
</i>