---
id: 207
title: Lighty Php Portable
date: 2007-09-29T00:11:24+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070928-171124
permalink: /2007/09/lighty-php-portable/
categories:
  - software, web
---
**note: this distro is now pretty out of date**

**download:**  
<a href="/downloads/LightyPhpPortable/" target="_blank" >/downloads/LightyPhpPortable/</a>

**whatis:**  
* portable web server for windows (xp) with interpreters php, perl and with nicely configured autoindex script (Copyright © 2002-2007 Justin Hagstrom).  
* shaved version of <a href="http://wlmp.dtech.hu/index.php?lang=en" target="_blank" >WLMP project</a>  
* On the shoulders of giants:  
<a href="http://www.lighttpd.net/" target="_blank" ><img src="/images/light_logo_big.png" border="0" alt="" /></a>

**goals:**  
* 'one click' server with php (and sqlite) for windows xp  
\* 'and another click\* shutdown which wont keep any traces on your system  
* file autoindexer with search feature  
* intended for intranets, intranet file sharing, as a test server, php development server etc  
* lighttpd can do some interesting flv streaming (right now); and hopefully mp4 streaming as well in the near future

**changelog from 01:**  
* 04f new lighty compile; never version of cygwin, very alpha  
* 04e eyecandy, nothing major  
* 04d php.ini changes for unicode mail, fake-sendmail-ready, example email php script (maybe even usable for intranets)  
* 04c php upgraded to 5.2.5, minor autoindex changes (not tested very much, flv streaming not tested at all)  
* 04b did a bit of autoindex hacking to display hostname in title and also instead of 'index of' stupidity.  
* 04 upgraded lighty, autoindex, bunch of autoindex config and directory structure changes  
* 03d is cleanup edition  
* upgraded php  
* shaved that autoindex template a bit  
* enabled sqlite in php.ini 

**php.ini**  
extension=php_mbstring.dll   
must be enabled if you need to send utf8 mail and similar.

**problems:**  
<strike>* gd is behaving, no thumbs are made, ect</strike>  
<strike>* css for the autoindex would need more work</strike>  
<strike>* unclickable links with ie?! wtf&#8230;</strike> fixed  
<strike>* html validation fails drastically </strike> fixed  
<strike>* distro should be nicer, no logs and stuff</strike>  
<strike>* stupid 'headers allready sent' error with my mail script</strike> &#8211; this must be something to do with php.ini and 'output_buffering = 4096'  
* autoindex reports really large files (over 2 gigs) as 0 bytes  
<strike>* can't find a way to include hostname in the title of autoindexed display</strike>  
* cygwin collisions (ubcd4win mkisos)

**requirements:**  
* windows xp (may or may not work on 2k or vista)  
* free disk letter S

**notes**  
upgrade fake sendmail manually (url in in the dir) and add the line  
`force_sender=portableLighty@noname.com`  
into the fake sendmail.ini

**misc, some software packages that seems to run well with this setup:**  
* phpBB 3 (with sqlite database) <a href="http://www.phpbb.com/" target="_blank" >http://www.phpbb.com/</a>  
* <a href="http://www.qt-cute.org/products_qtf.php" target="_blank" >http://www.qt-cute.org/products_qtf.php</a> (another nice forum software, with sqlite database)

**similar solutions:**  
* <a href="http://www.lighty2go.com/" target="_blank" >http://www.lighty2go.com/</a> (much more involved version of portable lighttpd as it seems, includes mysql as well)  
* <a href="http://portablewebap.com/portablewebap.php" target="_blank" >http://portablewebap.com/portablewebap.php</a> (apache,php,sqlite)  
* <a href="http://www.uniformserver.com/" target="_blank" >http://www.uniformserver.com/</a> (apache, php, mysql, ect)