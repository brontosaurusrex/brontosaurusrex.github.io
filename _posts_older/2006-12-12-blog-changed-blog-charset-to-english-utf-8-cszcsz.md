---
id: 361
title: 'blog &#8211; changed blog charset to &#8216;english&#8217; utf-8 / čšžČŠŽ'
date: 2006-12-12T20:43:41+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry061212-124341
permalink: /2006/12/blog-changed-blog-charset-to-english-utf-8-cszcsz/
categories:
  - blog
---
And it seems to work fine:

normal:  
čšžČŠŽ

html embeded:  
čšžČŠŽ

realated: atom feed shows wrong charset, removed from index.php, so that the browsers like firefox will now select rss.php as default (which is correct).

instructions here:  
<a href="https://sourceforge.net/forum/message.php?msg_id=3402381" target="_blank" >https://sourceforge.net/forum/message.php?msg_id=3402381</a>

quote:  
_For those of you like me who would like an English UTF-8 version, so you can include non-Latin characters in your blogs (useful if you want mathematical symbols for example) then here is what you need to do: </p> 

1. open the sphpblog/language folder,   
2. duplicate 'english', renaming it to 'english-utf8'   
3. edit the 'id.txt' file within so that it has a suitable label, I set mine to &#8220;English UTF-8&#8221;   
4. edit the 'strings.php' file within, changing the two lines that have the ISO-8859-1 value to: 

// ISO Charset: ISO-8859-1   
$lang\_string['html\_charset'] = 'UTF-8';   
$lang\_string['php\_charset'] = 'UTF-8'; 

Now when you should see &#8220;English UTF-8&#8221; in you configuration options. Note that if you had already entered accented characters previous to this change in your blog, then you will need to open the entries up in a text editor and resave the files as UTF-8, otherwise the will be wrong. </i>