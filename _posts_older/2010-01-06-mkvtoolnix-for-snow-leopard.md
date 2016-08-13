---
id: 503
title: mkvtoolnix for snow leopard
date: 2010-01-06T21:47:56+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=503
permalink: /2010/01/mkvtoolnix-for-snow-leopard/
categories:
  - Uncategorized
---
<http://jonthn.free.fr/MKVtoolnix/>

<pre lang="text">README Mkvtoolnix

 Should work in Leopard and Snow Leopard, Intel platform only.

 The GUI is 32bits. And the rest both 32/64bits.

-------------

In order to get MKVToolnix working in commandline you've got 2 choices :

1. Add the path to the tools to your $PATH variable

         export PATH=/Applications/Mkvtoolnix.app/Contents/MacOS/:$PATH

i.e you could add this line to your .profile by doing this :

         echo 'export PATH=/Applications/Mkvtoolnix.app/Contents/MacOS/:$PATH' >> ~/.profile

so everytime you fire up a shell you'll get your mkv tools

2. Or make links to the binaries

         sudo ln -s /Applications/Mkvtoolnix.app/Contents/MacOS/mkv* /usr/local/bin/</pre>