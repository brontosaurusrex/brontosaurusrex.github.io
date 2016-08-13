---
id: 183
title: 'boot problem (winXP)&#8230;'
date: 2007-12-26T13:53:55+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry071226-055355
permalink: /2007/12/boot-problem-winxp/
categories:
  - Uncategorized
---
edit: ok, solved (in only 12 hours&#8230;), the problem was schizophrenic bios, which invented some false scsi devices and then even put them in 1st place for boot priority (thats HD boot priority section, not general boot priority btw..), well fuck that, my next machine will be mac or something. 

&#8212;

early boot:  
channel 0-80 no conductor cable (and something, can't really read since it is so fast&#8230;)

later:  
NTLDR is missing

&#8212;

what was done so far:  
hardware:   
a. i have changed all HD sata cables with new ones  
b. changed all power cables

software:  
a. recovery console: fixmbr, fixboot  
b. checked  
`c:NTDETECT.COM<br />c:ntldr`  
(and they are the same as on winxp install disk)  
d. boot.ini   
`[boot loader]<br />timeout=30<br />default=multi(0)disk(0)rdisk(0)partition(1)WINDOWS<br />[operating systems]<br />multi(0)disk(0)rdisk(0)partition(1)WINDOWS="Microsoft Windows XP Professional" /noexecute=optin /fastdetect /usepmtimer`

&#8212;

i can boot selecting 'boot from c:' from early UBC menu.

&#8212;

new problems: nod32 failed to initialize (probably has something to do with fixmbr and fixboot&#8230;)