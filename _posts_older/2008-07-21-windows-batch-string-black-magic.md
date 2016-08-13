---
id: 114
title: windows batch string black magic
date: 2008-07-21T19:07:54+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry080721-120754
permalink: /2008/07/windows-batch-string-black-magic/
categories:
  - general
---
example

SET INSTALLDIR=%INSTALLDIR:=\%

will replace all occurences of backslash in string %INSTALLDIR% with double backslashes, i would never guess that&#8230;.

so say INSTALLDIR was   
`a:pathtosomesilly`  
will now say   
`a:\path\to\some\silly`

&#8212;

full example, set INSTALLDIR string to current dir and add some double backslashes (which just happens to be nice for some registry tweaking):

`set INSTALLDIR=%cd%<br />SET INSTALLDIR=%INSTALLDIR:=\%<br />echo INSTALLDIR %INSTALLDIR%`

keywords: string manipulation, bat, windows, xp