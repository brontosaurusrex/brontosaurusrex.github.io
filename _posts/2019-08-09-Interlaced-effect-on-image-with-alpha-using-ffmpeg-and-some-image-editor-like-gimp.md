---
published: true
layout: post
date: '2019-08-09 22:05'
title: Interlaced effect on image with alpha using ffmpeg and some image editor like gimp
tags: video mine 
---
In Gimp save first frame as bronto_001.png, reposition the logo and save as bronto_002.png.

Then, using ffmpeg

    ffmpeg -i bronto_%03d.png -filter:v interlace bronto_interlaced.png
    
or, sharper

    ffmpeg -i bronto_%03d.png -filter:v interlace=scan=1:lowpass=2 bronto_interlaced2.png
    
and with scale

    ffmpeg -i bronto_%03d.png -filter:v scale=900:-1,interlace=scan=1:lowpass=2 bronto_interlaced_logo.png

Voila.

<a href="/public/bronto_interlaced2.png"><img src="/public/bronto_interlaced2.png" style="object-position: 0 0; object-fit: none; width:1313px; height:568px;"></a>

p.s. [Css](https://css-tricks.com/almanac/properties/o/object-position/) to embed this 1:1 ^

    style="object-position: 0 0; object-fit: none; width:1313px; height:568px;"
    
p.s.2. The not-working-as-expected [imagemagick way to interlace.](https://stackoverflow.com/questions/36355337/how-can-i-interlace-two-images-using-imagemagick)

p.s.3. With imagemagick the gimp repositioning part could be simply done by adding transparent TL pixels on one and BR pixels on 2nd 'field'. [https://www.imagemagick.org/Usage/crop/#extent](https://www.imagemagick.org/Usage/crop/#extent)

### Wallpaper
[![brontointer-back.md.png](https://cdn.scrot.moe/images/2019/08/09/brontointer-back.md.png)](https://scrot.moe/image/xzTiU)

### Script

    #!/bin/bash

    # InterlaceMagick (using imagemagick and ffmpeg)

    # input should be transparent image 

    # usage: interlaceMagick logo.png 0.5
    #                                  ^ percents of height-based offset

    set -ex

    # input
    logo="$1"
    offset="$2"
    [[ -z "$offset" ]] && offset="2"

    # input breakdown 
    file=$(readlink -f "$logo")       # quasi absolute
    baseext=$(basename "${logo}")     # file.ext
    base="${baseext%.*}"              # file
    #ext="${file##*.}"                 # ext
    dir=${file%/*}                    # directory

    # tmp dir http://mywiki.wooledge.org/BashFAQ/062
    tmp="/tmp/$RANDOM-$$"
    trap '[ -n "$tmp" ] && rm -fr "$tmp"' EXIT
    mkdir -m 700 "$tmp" || { echo '!! unable to create a tmpdir' >&2; tmp=; exit 1; }

    # get logo height in px
    height="$(convert "$1" -format "%h" info:)"
    echo "$height px"

    # now get N% of that height in px
    n="$(convert xc: -format "%[fx:$height*$offset/100]" info:)"
    echo "$n"

    # field 1
    convert "$file" -background transparent -splice "${n}"x"${n}" "$tmp/field_001.png"  

    # field 2
    convert "$file" -background transparent -gravity southeast -splice "${n}"x"${n}" "$tmp/field_002.png"

    # interlace
    ffmpeg -i "$tmp/field_%03d.png" -filter:v interlace=scan=1:lowpass=2 "$dir/${base}_interlaced.png"

