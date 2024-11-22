---
published: true
layout: post
date: '2024-11-22 10:14'
title: Youtube video to wallpaper evil plan
tags: web video luv mine 
---
  yt-dlp --download-sections "*00:05:00-00:05:01" -o "video"  https://www.youtube.com/url

shall download a small section starting at minute 5.

  ffmpeg -i video.webm -vf "select=eq(n\,0)" -vsync vfr frame.png

will extract first frame from video (which may be named something other than video.webm).

To be continued.
