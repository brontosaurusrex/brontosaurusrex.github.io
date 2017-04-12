---
id: 3525
title: OSX Mavericks comments from cli and specific backup via rsync
date: 2014-11-09T00:56:41+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3525
permalink: /2014/11/are-the-osx-mavericks-tags-visible-from-the-command-line/
categories:
  - Uncategorized
---
<http://apple.stackexchange.com/questions/93979/are-the-osx-mavericks-tags-visible-from-the-command-line>

something like

<pre>mdfind -onlyin /Volumes/int_raid/brontosaurusrex_small/ "master4rsync"
</pre>

will find files commented as &#8220;master4rsync&#8221;.

So to construct a sort of specific files backup using mdfind and rsync:

<pre>mdfind -0 -onlyin "/from/some/tree/" "master4rsync" | rsync --from0 --files-from=- --no-dirs --no-relative -avb / /to/backup/dir/</pre>

breakdown:

mdfind

is a command line version of osx spotlight, so this might fail when spotlight is indexing or not available

-0

zero byte termination

-onlyin 

just search in specific root (in this case searching for master4rsync comment)

rsync

is rsync

&#8211;from 0

expect zero byte terminated input

&#8211;files-from=- &#8211;no-dirs &#8211;no-relative

consult rsync man

-avb

b stands for backup, this will kinda keep same-named files