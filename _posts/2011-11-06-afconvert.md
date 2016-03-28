---
id: 1894
title: afconvert
date: 2011-11-06T21:10:30+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=1894
permalink: /2011/11/afconvert/
categories:
  - Uncategorized
---
docs
  
<http://developer.apple.com/library/mac/#qa/qa1534/_index.html>
  
mirror: [afconvert.txt](http://brontosaurusrex.69.mu/downloads/afconvert/afconvert.txt)

ecnoding to HE-AAC, example cli:
  
`afconvert -v -f "mp4f" -d "aach" -b 32000 muki.wav`

true vbr example
  
`afconvert -v -f "m4af" -d aac -s 3 input.aif`

or maybe (untested)
  
`afconvert -v -f m4af -d aac -s 3 -u vbrq 46 input.aif`

would that be the same as qtaacenc -tvbr 46 &#8211;highest &#8211;samplerate keep ? 

some of the formats:

&#8230;
      
kAudioFormatAppleLossless = &#8216;alac&#8217;,
      
kAudioFormatMPEG4AAC_HE = &#8216;aach&#8217;,
      
kAudioFormatMPEG4AAC_LD = &#8216;aacl&#8217;,
	  
kAudioFormatMPEG4AAC_ELD = &#8216;aace&#8217;,
      
kAudioFormatMPEG4AAC\_HE\_V2 = &#8216;aacp&#8217;,
      
kAudioFormatMPEG4AAC_Spatial = &#8216;aacs&#8217;,