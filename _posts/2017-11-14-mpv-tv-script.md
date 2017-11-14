---
published: true
layout: post
date: '2017-11-14 11:57 +0100'
title: mpv tv script
---
    #!/bin/bash

    mpv --no-resume-playback -playlist=- <<EOF
    #EXTM3U
    #EXTINF:-1, Discovery
    http://stream1...
    #EXTINF:-1, NatGeo
    http://stream2...
    #EXTINF:-1, hbo
    http://stream3...

    EOF

    # https://mpv.io/manual/master/#keyboard-control
    # < and >       Go backward/forward in the playlist.
    # d             toggle deinterlacing
    # shift +a      cycle aspect ratio
    
## Questions

- Shortcut to jump to specific playlist entrie ?
- A way to make mpv to remember and resume playlist position (Can't resume stream itself) ?
- Force mpv OSD title to reflect the one on EXTINF and not some silly stream name ?
