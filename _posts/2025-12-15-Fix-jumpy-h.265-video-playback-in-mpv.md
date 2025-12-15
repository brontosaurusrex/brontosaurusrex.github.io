---
published: true
layout: post
date: '2025-12-15 17:36'
title: Fix jumpy h.265 video playback in mpv?
tags: video
---
<https://github.com/mpv-player/mpv/issues/7707>

In mpv.conf

  vo=gpu
  gpu-api=auto
  hwdec=d3d11va-copy
  hwdec-codecs=all
  opengl-pbo=yes

Seems to fix jumpy playback of 10 bit h.265 on win11 machine. Where most likely fix (according to ai) is

  hwdec=d3d11va-copy
