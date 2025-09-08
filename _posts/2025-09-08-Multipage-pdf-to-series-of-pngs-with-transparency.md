---
published: true
layout: post
date: '2025-09-08 13:01'
title: Multipage pdf to series of pngs with transparency
tags: misc 
---
pdftocairo is part of the poppler-utils package.

    pdftocairo -png -transp -scale-to 2048 in.pdf out

Both x and y are expanded to 2048px. Output will be series of png's, like:

    out-01.png
    out-02.png
    out-03.png
    ...
