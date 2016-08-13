---
id: 1286
title: international domain names and apache and wordpress and browsers
date: 2011-03-09T07:57:24+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1286
permalink: /2011/03/international-domain-names-and-apache-and-wordpress-and-browsers/
categories:
  - Uncategorized
---
_**apache:**_ host name should be defined using punnycode, not the real chars, for example (domain name would be štala.si):

in /etc/apache2/sites-enabled make a site named: www.xn--tala-f6a.si

`_**apache:**_ host name should be defined using punnycode, not the real chars, for example (domain name would be štala.si):

in /etc/apache2/sites-enabled make a site named: www.xn--tala-f6a.si

` 

and

file xn--tala-f6a.si, with similar content.

_**browsers:**_ (it appears that on windows: ie7 and chrome are behaving nicely)
  
Firefox: about:config and add this to the whitelist:
  
network.IDN.whitelist.si;true
  
(this is of course very useless for your visitors, they will have to stare at weird looking punnycode)

_**wordpress:**_
  
use punnycode and not the real chars, when defining the site.