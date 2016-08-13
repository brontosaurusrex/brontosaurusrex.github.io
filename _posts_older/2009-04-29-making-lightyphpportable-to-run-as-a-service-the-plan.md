---
id: 57
title: 'making lightyPhpPortable to run as a service, the plan:'
date: 2009-04-29T07:51:55+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry090429-005155
permalink: /2009/04/making-lightyphpportable-to-run-as-a-service-the-plan/
categories:
  - Uncategorized
---
evil plan:

it must run from a subst drive, which is a problem, since it is unclear how to mount such drive on boot, that is before services start, now the install\_and\_run\_lighty\_as\_a\_service.bat should look like (abstract):

0. subst the s: drive  
1. make some service named lighty:  
instsrv lighty servany  
2. haksor the registry that is connected to that new service, fill in the correct values to start the actual lightTPD.exe with correct parameters  
3. find a way that this service can run from virtual drive, make a bacth just for subst s: and run that batch from service when it fails the 1st time; snap:

<img src="/images/recoverService.jpg" width="410" height="468" border="0" alt="" />