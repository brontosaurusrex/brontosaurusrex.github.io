---
id: 901
title: lucid lynx enable compositing (disable compiz)
date: 2010-06-06T19:31:57+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=901
permalink: /2010/06/lucid-lynx-enable-compositing-disable-compiz/
categories:
  - Uncategorized
---
There seems to be a compiz related bug where there is no chance to change the cursor size, enabling compositing and disabling compiz seems to be the current fasion around this bug, like so, compositing on:

`gconftool-2 -s --type bool /apps/metacity/general/compositing_manager true`
  
and off
  
`gconftool-2 -s --type bool /apps/metacity/general/compositing_manager false`
  
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2010/06/fatso.png" alt="" title="fatso" width="200" height="245" class="alignnone size-full wp-image-904" />](http://brontosaurusrex.69.mu/wp-content/uploads/2010/06/fatso.png)

more
  
[http://ubuntu-tutorials.com/2009&#8230;](http://ubuntu-tutorials.com/2009/02/25/update-enable-compositing-the-easier-way/)