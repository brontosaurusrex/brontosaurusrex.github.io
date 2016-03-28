---
id: 845
title: html5 video and javascript triggers
date: 2010-05-11T19:50:37+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=845
permalink: /2010/05/html5-video-and-javascript-triggers/
categories:
  - Uncategorized
---
fires when video stops playing;
  
<http://stackoverflow.com/questions/2741493/how-do-you-detect-html5-video-events>

    <video src="video.ogv">
         video not supported
    </video>
    

then you can use:

    <script>
        var video = document.getElementsByTagName('video')[0];
        video.onended = function(e) {
          /*Do things here!*/
        }
    </script>