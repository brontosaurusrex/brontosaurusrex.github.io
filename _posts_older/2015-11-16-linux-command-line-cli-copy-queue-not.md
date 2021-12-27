---
id: 3956
title: 'linux command line (cli) copy queue &#8230; not'
date: 2015-11-16T20:42:03+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3956
permalink: /2015/11/linux-command-line-cli-copy-queue-not/
categories:
  - Uncategorized
---
parallel

<pre>cp -r source1 dest &
cp -r source2 dest &

jobs # to list bg stuff

kill %1 # to kill job number 1</pre>

It gives some control and it is definitely better than clunky mc.

One could do a combo of serial and parallel as well:

<pre>(cp a b; cp d b) &
cp e b &</pre>

some good reading
  
<http://mywiki.wooledge.org/ProcessManagement>

p.s. In case of (cp a b; cp c d) & it appears that one could not get the PIDS of this two, since we are not direct parent, but rather parent of the parent &#8230; (unless perhaps writing pids to file < to test)