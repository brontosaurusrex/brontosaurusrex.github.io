---
id: 2935
title: Linux, convert docx to pdf
date: 2014-01-14T19:58:16+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2935
permalink: /2014/01/linux-convert-docx-to-pdf/
categories:
  - Uncategorized
---
<pre>libreoffice --headless -convert-to pdf file.docx -outdir ./</pre>

or (worse);

<pre>abiword --to=PDF -o testAbi.pdf file.docx</pre>