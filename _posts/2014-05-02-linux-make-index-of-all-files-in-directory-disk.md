---
id: 3157
title: linux, make index of all files in directory / disk
date: 2014-05-02T00:54:40+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3157
permalink: /2014/05/linux-make-index-of-all-files-in-directory-disk/
categories:
  - Uncategorized
---
<pre>cd /to/folder/
find . -type f -exec du -h --time --exclude='.Apple*' {} + > index.txt</pre>

then you would push that index or more of them to some web server and do a php search thingy with answer2 from here;

<http://stackoverflow.com/questions/3686177/php-to-search-within-txt-file-and-echo-the-whole-line>

edit:
  
And this seems to work on osx maverick (find with white and black list and stat to get me date, file size in bytes, filename)

<pre>find . \( -name "*.mov" -o -name "*.avi" -o -name "*.jpg" -o -name "*.mp3" \) ! -path "*Adobe*" ! -path "*.pek" ! -path "*.cfa" -exec stat -f "%Sm,%z,%N" -t "%d.%m.%Y %H:%M:%S" {} + 2>/dev/null 1>index.txt</pre>

(note: version of du on osx is severely retarded as it seems)

example output
  
`<pre>cd /to/folder/
find . -type f -exec du -h --time --exclude='.Apple*' {} + > index.txt</pre>

then you would push that index or more of them to some web server and do a php search thingy with answer2 from here;

<http://stackoverflow.com/questions/3686177/php-to-search-within-txt-file-and-echo-the-whole-line>

edit:
  
And this seems to work on osx maverick (find with white and black list and stat to get me date, file size in bytes, filename)

<pre>find . \( -name "*.mov" -o -name "*.avi" -o -name "*.jpg" -o -name "*.mp3" \) ! -path "*Adobe*" ! -path "*.pek" ! -path "*.cfa" -exec stat -f "%Sm,%z,%N" -t "%d.%m.%Y %H:%M:%S" {} + 2>/dev/null 1>index.txt</pre>

(note: version of du on osx is severely retarded as it seems)

example output
  
`