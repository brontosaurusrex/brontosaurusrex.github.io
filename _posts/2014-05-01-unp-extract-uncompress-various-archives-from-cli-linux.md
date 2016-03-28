---
id: 3154
title: 'unp: extract, uncompress various archives from cli, linux'
date: 2014-05-01T14:05:19+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3154
permalink: /2014/05/unp-extract-uncompress-various-archives-from-cli-linux/
categories:
  - Uncategorized
---
_unp is a small perl script which makes extraction of any archive files a bit easier. It support several compressors and archiver programs, chooses the right one(s) automatically and extracts one or more files in one go._

It is in repos (apt-get install unp).

<https://packages.debian.org/sid/utils/unp>

<pre>unp -s
Known archive formats and tools:
7z:           p7zip or p7zip-full
ace:          unace
ar,deb:       binutils
arj:          arj
bz2:          bzip2
cab:          cabextract
chm:          libchm-bin or archmage
cpio,afio:    cpio or afio
dat:          tnef
dms:          xdms
exe:          maybe orange or unzip or unrar or unarj or lha 
gz:           gzip
hqx:          macutils
lha,lzh:      lha
lz:           lzip
lzma:         xz-utils or lzma
lzo:          lzop
lzx:          unlzx
mbox:         formail and mpack
pmd:          ppmd
rar:          rar or unrar or unrar-free
rpm:          rpm2cpio and cpio
sea,sea.bin:  macutils
shar:         sharutils
tar:          tar
tar.bz2,tbz2: tar with bzip2
tar.lzip:     tar with lzip
tar.lzop,tzo: tar with lzop
tar.xz,txz:   tar with xz-utils
tar.z:        tar with compress
tgz,tar.gz:   tar with gzip
uu:           sharutils
xz:           xz-utils
zip,cbz,cbr,jar,war,ear,xpi,adf: unzip
zoo:          zoo
</pre>