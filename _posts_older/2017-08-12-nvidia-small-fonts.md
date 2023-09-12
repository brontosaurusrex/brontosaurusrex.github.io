---
published: true
layout: post
date: '2017-08-11 22:00 +0200'
title: Nvidia and small fonts
tags: linux
---
Add

        Option         "DPI" "96 x 96"

under Monitor in xorg.conf, so it becames something like

    Section "Monitor"
        Identifier     "Monitor0"
        VendorName     "Unknown"
        ModelName      "SAMSUNG"
        HorizSync       15.0 - 81.0
        VertRefresh     24.0 - 75.0
        Option         "DPMS"
        Option         "DPI" "96 x 96"
    EndSection
    
Blender 2.97 will now not hang when clicking render as opengl image.
