---
published: true
layout: post
date: '2024-05-28 11:39'
title: Mono with dither
tags: misc 
---

    convert nice.png -ordered-dither h4x4a -monochrome nicemono1.png
    convert nice.png -dither FloydSteinberg -monochrome nicemono2.png
    convert nice.png -dither Reimersha -monochrome nicemono3.png # default
