---
id: 445
title: font-face (firefox 3.5)
date: 2009-12-30T10:41:35+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=444
permalink: /2009/12/font-face-firefox-3-5/
categories:
  - Uncategorized
---
<http://hacks.mozilla.org/2009/06/beautiful-fonts-with-font-face/>

gentium example:

<pre lang="css">/* Gentium by SIL International   */
/* http://scripts.sil.org/gentium */
 
@font-face {
  font-family: Gentium;
  src: url(Gentium.ttf);
  /* font-weight, font-style ==&gt; default to normal */
}
 
@font-face {
  font-family: Gentium;
  src: url(GentiumItalic.ttf);
  font-style: italic;
}
 
body { font-family: Gentium, Times New Roman, serif; }</pre>

fonts?
  
<http://www.fontsquirrel.com/>

edit: firefox 3.6 and woff
  
<http://hacks.mozilla.org/2009/10/woff/>