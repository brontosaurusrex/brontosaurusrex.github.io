---
id: 130
title: win cmd and unicode
date: 2008-06-09T15:03:10+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry080609-080310
permalink: /2008/06/win-cmd-and-unicode/
categories:
  - general
---
<a href="http://www.dpawson.co.uk/xsl/sect2/Unicode.html" target="_blank" >http://www.dpawson.co.uk/xsl/sect2/Unicode.html</a>

_Trigger the unicode support for all pipe etc (default is ansi) with the command:</p> 

cmd /u

Set the font of the console to one that has glyphs in the unicode range:  
&#8211; go to console system menu (Alt-Space)  
&#8211; select Properties > Font  
&#8211; select &#8220;Lucida Sans&#8221; (MS will automatically select &#8220;Lucida Sans Unicode&#8221; when it is needed and when it is available on your system)

Change the codepage of the console screen to use Unicode (default is IBM 437) with the command:

chcp 65001

Call your commands \*without\* using a batch file (won't work anymore&#8230;). You can put your command in an environment variable for nconvenience.</i>