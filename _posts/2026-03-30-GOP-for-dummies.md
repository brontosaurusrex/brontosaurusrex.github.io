---
published: true
layout: post
date: '2026-03-30 14:31'
title: GOP for dummies
tags: video 
---
GOP = Group of Pictures

Chatgpt constructed bash script could look like

    #!/usr/bin/env bash

    # GOP

    input="$1"

    RED="\033[31m"
    GREEN="\033[32m"
    BLUE="\033[34m"
    RESET="\033[0m"

    ffprobe -v error \
      -select_streams v:0 \
      -show_frames \
      -show_entries frame=pict_type,pkt_size \
      -of csv=p=0 "$1" |
    awk -F',' -v R="\033[31m" -v G="\033[32m" -v B="\033[34m" -v X="\033[0m" '
    {
        type=""
        size=""

        for (i=1; i<=NF; i++) {
            if ($i ~ /^[IPB]$/) type=$i
            if ($i ~ /^[0-9]+$/) size=$i
        }

        if (!type && size) type="I"

        if (type && size) {
            color = (type=="I") ? R : (type=="P") ? G : B
            printf "%6d  %s%s%s  %8d bytes\n", NR, color, type, X, size
        }
    }
    '

Typical cineform mov, all frames are I frames (ffprobe will not return frame type, so script assumes I type):

    gop cineform.mov
    
     1  I   1428668 bytes
     2  I   1495596 bytes
     3  I   1478536 bytes
     4  I   1435628 bytes
     5  I   1500988 bytes
     6  I   1604252 bytes
     7  I   1473584 bytes
     8  I   1530488 bytes
     9  I   1637484 bytes
    10  I   1475332 bytes
    11  I   1525756 bytes
    12  I   1648728 bytes
    13  I   1450760 bytes
    14  I   1480096 bytes
    15  I   1468560 bytes
    16  I   1439028 bytes
    17  I   1501236 bytes
    18  I   1602928 bytes
    19  I   1481236 bytes
    20  I   1525344 bytes
    21  I   1622172 bytes
    22  I   1506064 bytes
    23  I   1529228 bytes
    24  I   1629456 bytes
    25  I   1452368 bytes
    26  I   1481740 bytes
    27  I   1448896 bytes
    28  I   1437796 bytes
    29  I   1486024 bytes
    30  I   1578068 bytes

Typical ultrafast x.264 (screen recording), doesn't bother with B frames

    gop ultrafastAVC.mp4 | head -n 30
    
     1  I    911822 bytes
     2  P    123747 bytes
     3  P    394756 bytes
     4  P     11416 bytes
     5  P      6375 bytes
     6  P      6773 bytes
     7  P      6389 bytes
     8  P     26484 bytes
     9  P      6701 bytes
    10  P      6503 bytes
    11  P      6233 bytes
    12  P      6066 bytes
    13  P      6486 bytes
    14  P      6548 bytes
    15  P      6248 bytes
    16  P      6245 bytes
    17  P     59351 bytes
    18  P      7809 bytes
    19  P      6411 bytes
    20  P      6887 bytes
    21  P      6560 bytes
    22  P      6165 bytes
    23  P      6290 bytes
    24  P      6671 bytes
    25  P     25275 bytes
    26  P      6727 bytes
    27  P      6814 bytes
    28  P      8137 bytes
    29  P      7559 bytes
    30  P      7283 bytes

Veryslow x.264 preset

    gop veryslowAVC.mp4 | head -n 30

     1  I    159087 bytes
     2  B     30468 bytes
     3  B     49405 bytes
     4  B     26404 bytes
     5  P    106049 bytes
     6  B     28771 bytes
     7  B     45149 bytes
     8  B     24049 bytes
     9  P    100280 bytes
    10  B     27993 bytes
    11  B     43132 bytes
    12  B     24211 bytes
    13  P     88936 bytes
    14  B     24944 bytes
    15  B     41915 bytes
    16  B     25152 bytes
    17  P     92606 bytes
    18  B     32308 bytes
    19  B     47765 bytes
    20  B     22979 bytes
    21  P     80585 bytes
    22  B     25030 bytes
    23  B     51157 bytes
    24  B     27996 bytes
    25  P     53829 bytes
    26  I    138291 bytes
    27  B      7836 bytes
    28  B     11356 bytes
    29  B      7449 bytes
    30  P     27069 bytes

50 mbit XDCAM mpeg2 thing, GOP is 12 frames long, encoding type is CBR

    gop xdcam.mxf | head -n 30

     1  I    250000 bytes
     2  B    250000 bytes
     3  B    250000 bytes
     4  P    250000 bytes
     5  B    250000 bytes
     6  B    250000 bytes
     7  P    250000 bytes
     8  B    250000 bytes
     9  B    250000 bytes
    10  P    250000 bytes
    11  B    250000 bytes
    12  B    250000 bytes
    13  I    250000 bytes
    14  B    250000 bytes
    15  B    250000 bytes
    16  P    250000 bytes
    17  B    250000 bytes
    18  B    250000 bytes
    19  P    250000 bytes
    20  B    250000 bytes
    21  B    250000 bytes
    22  P    250000 bytes
    23  B    250000 bytes
    24  B    250000 bytes
    25  I    250000 bytes
    26  B    250000 bytes
    27  B    250000 bytes
    28  P    250000 bytes
    29  B    250000 bytes
    30  B    250000 bytes

Very nice.

