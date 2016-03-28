---
id: 3705
title: 'links from #bash'
date: 2015-02-02T16:34:21+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3705
permalink: /2015/02/links-from-bash/
categories:
  - Uncategorized
---
FAQ: <http://mywiki.wooledge.org/BashFAQ>
  
Guide: <http://mywiki.wooledge.org/BashGuide>
  
<http://wiki.bash-hackers.org/>
  
[http://www.shellcheck.net/](http://wiki.bash-hackers.org/)
  
Devel: <http://xrl.us/bmodjy>
  
Mailing list: <https://lists.gnu.org/mailman/listinfo/help-bash>

sourcing, including the half-proper way; <http://mywiki.wooledge.org/BashFAQ/028>

<pre>read somevar &lt; "${BASH_SOURCE%/*}/etc/somefile"</pre>