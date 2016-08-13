---
id: 1189
title: canon updates, how to make them work if you lost the original cd? (win xp)
date: 2011-02-04T11:49:02+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/2011/02/canon-updates-how-to-make-them-work-if-you-lost-the-original-cd-win-xp/
permalink: /2011/02/canon-updates-how-to-make-them-work-if-you-lost-the-original-cd-win-xp/
categories:
  - Uncategorized
---
drop this.reg into registry:
  
`Windows Registry Editor Version 5.00<br />
[HKEY_LOCAL_MACHINESOFTWARECanonEOS Utility]<br />
[HKEY_LOCAL_MACHINESOFTWARECanonDPP]<br />
[HKEY_LOCAL_MACHINESOFTWARECanonZoomBrowser EX]<br />
[HKEY_LOCAL_MACHINESOFTWARECanonPhotoStitch]<br />
[HKEY_LOCAL_MACHINESOFTWARECanonEOS Capture]<br />
[HKEY_LOCAL_MACHINESOFTWARECanonEOSViewerUtility]`

and then &#8216;update&#8217;.