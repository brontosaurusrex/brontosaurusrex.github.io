---
id: 2796
title: sqlite3 notes
date: 2013-11-20T00:47:22+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2796
permalink: /2013/11/sqlite3-notes/
categories:
  - Uncategorized
---
To generate a MATCH search-able table you need to use FFS;

<pre>CREATE VIRTUAL TABLE IF NOT EXISTS `wb_posts` USING fts4(more stuff);</pre>

then you can search like;

<pre>SELECT * FROM wb_posts WHERE post_content MATCH 'plank';</pre>

Looking at the way wordpress stores html in tables does look messy, definately an abstraction layer like markdown is needed.
  
<http://daringfireball.net/projects/markdown/>

simple blog database construct notes;

<pre>simple
-----------
date
author
title
post
private = true/false (false would mean never to post for web)


less simple
-----------
date
author
title
subtitle
post
links
private = true/false

complex, (looking at wordpress a bit)
-----------
post_author	
post_date	
post_date_gmt (do i need both?)
post_content	
post_title	
post_excerpt (nah)
post_status	(in my case this would be private or public)
post_name (what would be a difference between name and content)
post_modified	
post_modified_gmt (do i need both?)
uuid (really needed?)
post_type ?
post_mime_type ?	

</pre>