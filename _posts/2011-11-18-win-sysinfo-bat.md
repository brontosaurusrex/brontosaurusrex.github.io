---
id: 1936
title: win sysinfo bat
date: 2011-11-18T15:56:57+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=1936
permalink: /2011/11/win-sysinfo-bat/
categories:
  - Uncategorized
---
`@ECHO OFF<br />
echo .....................................................................start<br />
wmic csproduct get name,identifyingnumber,uuid<br />
wmic COMPUTERSYSTEM get TotalPhysicalMemory,caption<br />
wmic bios get name,serialnumber,version<br />
wmic cpu get name,CurrentClockSpeed,MaxClockSpeed<br />
echo .....................................................................drives<br />
wmic logicaldisk WHERE drivetype=3 GET name,freespace,SystemName,FileSystem,Size,VolumeSerialNumber<br />
wmic diskdrive get name,size,model<br />
echo .....................................................................nic<br />
wmic nic get macaddress,description<br />
echo .....................................................................systeminfo<br />
systeminfo<br />
echo .....................................................................end`