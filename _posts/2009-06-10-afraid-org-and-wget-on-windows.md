---
id: 49
title: afraid.org and wget on windows
date: 2009-06-10T20:23:05+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry090610-132305
permalink: /2009/06/afraid-org-and-wget-on-windows/
categories:
  - blog
---
afraid.org has this bat file you can download and run, so your dynamic ip would update. The problem: it is not working for me&#8230;, i got this working example instead:

**somedomain.org.bat**  
`wget -q -o tmplog.txt  --timeout=0 --wait=5 --tries=400 --background <a href="http://freedns.afraid.org/dynamic/update.php?SOMEID" target="_blank" >http://freedns.afraid.org/dynamic/update.php?SOMEID</a><br />del tmplog.txt`

now you could add that to your scheduled tasks, but a lil cmd window will popup shortly every time the thingy is run, the solution:

**somedomain.org.bat.vbs**  
`Set WinScriptHost = CreateObject("WScript.Shell")<br />WinScriptHost.Run Chr(34) & "d:fullpathtosomedomain.org.bat" & Chr(34), 0<br />Set WinScriptHost = Nothing`

so call this vbs from scheduled tasks.

p.s. in this context system paths are not found however for some reason, solution:

copy wget.exe to the same folder as both scripts are.