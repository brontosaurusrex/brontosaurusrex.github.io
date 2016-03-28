---
id: 11
title: cron, crontab log
date: 2009-11-10T20:24:59+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry091110-122459
permalink: /2009/11/crontab-log/
categories:
  - Uncategorized
---
crontab log
  
<a href="http://www.casualcode.com/2008/05/18/how-to-enable-cron-log-in-ubuntu/" target="_blank" >http://www.casualcode.com/2008/05/18/ho &#8230; in-ubuntu/</a>

about
  
individual users can have crontabs ( to see yours, in terminal do &#8216; crontab -l &#8216;, to edit, &#8216; crontab -e &#8216; ) there&#8217;s a system wide crontab at /etc/crontab

edit:
  
in karmic, disabling logging to home dir is like this:
  
`command 2>&1 > /dev/null`