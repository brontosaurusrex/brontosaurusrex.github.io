---
id: 2010
title: ffmpeg user-list, unofficial rules
date: 2012-02-16T07:33:37+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=2010
permalink: /2012/02/ffmpeg-user-list-unofficial-rules/
categories:
  - Uncategorized
---
ffmpeg-user mailing list specific rules:
  
* Avoid top-posting. Interleaved replying is standard etiquette.
  
an example of what you should NOT do
  
http://en.wikipedia.org/wiki/Posting_style#Top-posting

* Do not hijack threads (replying to a thread and changing the subject
   
line to something completely unrelated that was not being discussed
   
within the original thread).

* Configure your mail client to break lines after 70-80 characters. (why exactly?)

How to provide the right information:
  
* Use recent ffmpeg from Git or a supported version of ffmpeg (see
   
download page) if possible.

* Show your ffmpeg command and the complete, uncut console output
   
of your command.

* If you attach files avoid compressing small files; uncompressed is
   
preferred. (that&#8217;s probably for patches/text files?)

* Use minimal commands to help narrow down what is causing the issue.
   
Exclude filters and external encoders (usually anything lib*, such as
   
libx264) if possible. (So there is no support for external encoders such as x264, vp8?)

* Provide a link to samples if applicable (see datafilehost.com or
   
mediafire.com if you need a file service).

* Avoid posting command lines that use shell variables. We need
   
commands that allow anyone to easily duplicate your issue.

* I was told off for using HTML format (on by default in gmail) &#8211; is that a rule?

* Deleting attributions is a tad impolite as well; I have to go upthread
  
to find out who you were quoting.