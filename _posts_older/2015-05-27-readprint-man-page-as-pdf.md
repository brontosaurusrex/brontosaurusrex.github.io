---
id: 3771
title: read/print man page as pdf
date: 2015-05-27T11:35:35+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3771
permalink: /2015/05/readprint-man-page-as-pdf/
categories:
  - Uncategorized
---
`zcat /usr/share/man/man1/zathura.1.gz | groff -mandoc -Tpdf -P-pa4 - | zathura --fork -`