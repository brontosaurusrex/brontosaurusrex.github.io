---
published: true
layout: post
date: '2020-02-17 20:38'
title: Youtube to audio CD
tags: audio mine 
---
* TOC
{:toc}

## Download

    youtube-dl -i -f 140 playlist
    
## Rename by date, adding numerals

    n=0; ls -tr *.m4a | while read i; do n=$((n+1)); mv -- "$i" "$(printf '%03d' "$n")"_"$i"; done
    
Hacky, but works for this purpose, that is keeping playlist order.

## Detox file names

    detox -r -v -n *.m4a # remove -n when ready
    
Because certain file names will cause problems with picard and with k3b.

## Tag, Picard in repos

You will need musicbrainz account.  
In preferences disable cover art downloads/embeding.  
Scan, save.  
If some are left on the left, then *tools/Tags from file names*, save.

    %trash%_%artist%-%title%

## Convert to 44.1 khz EBUr128 flac files

Flac is needed due to the fact it can carry metadata for cd text that k3b can use.

[toFlacCD](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/toFlacCD). This script is part of singularity and it will not run standalone.

    toFlacCD *.m4a
    
## A script to populate folders by audio length

Warning: Assumes and doesn't check if there is a single file longer than 80 minutes.

    #!/bin/bash

    # populate cd folders by length script
    # usage: ./script *.flac

    cd="1"
    mkdir -p "$cd"
    durall="0"

    # main
    while [ $# -gt 0 ]; do

        line="$1"
        echo "$cd $line"
        
        # duration of song in seconds
        dur="$(mediainfo --Inform="General;%Duration%" "$line")"
        if [ -z "$dur" ]; then
            echo "$line didn't report any length, skiping."
            continue # skip this file
        else
            dur=${dur::-3}
        fi
        
        # 700 MB CD should hold ~ 80 minutes of audio = 4800 seconds
        (( durall = durall + dur )) ; echo "durall $durall"
        
        if (( durall > 4700 )); then
        
            rm "$cd/$prev"
        
            (( cd = cd + 1 ))
            mkdir -p "$cd"
            
            cp "$prev" "$cd"
            durall="0"
            
        else
            
            cp "$line" "$cd"
            
        fi
        
        # store previous line
        prev="$line"
        
        #sleep 1
        
    shift
    done

Should be run inside that flac folder as ./script *.flac. Size of each folder might be checked with

    cd 1
    du -mc *

## Burn

k3b. Make sure that **CD-text** is populated. Brasero also seems to support CD-text (untested).

## Cover

### Txt

Generate tmp.txt file declaring cd structure. A script named *cover*, put in ~/bin

    #!/bin/bash

    # cover

    # make txt cover for a cd, 
    # usage: 'cover *.flac > tmp.txt'

    n="1"

    # Use folder name for cd title
    printf '(%s)\n' "${PWD##*/}"

    # main
    while [ $# -gt 0 ]; do

        song="$1"

        title="$(metaflac --show-tag=title "$song")" && title="${title#TITLE=}"
        artist="$(metaflac --show-tag=artist "$song")" && artist="${artist#ARTIST=}"

        if [ -z "$title" ]; then
            title="$song"
        fi
        if [ -z "$artist" ]; then
            artist="$song"
        fi
        
        printf '%02d. %s - %s\n' "$n" "$title" "$artist"
               
        (( n = n + 1 ))

    shift
    done
    
Usage

    cd 8
    cover *.flac > tmp.txt && cat tmp.txt

may return

    (8)
    01. Just Like Fire - P!nk
    02. One Last Time - Ariana Grande
    03. Green Light - Lorde
    04. Blow Your Mind (Mwah) - Dua Lipa
    05. Girls - Rita Ora feat. Cardi B, Bebe Rexha & Charli XCX
    
### Html template that should print to exactly 120x120 mm

<iframe src="/cover.htm" style="border:0; width:500px; height:500px;"></iframe>

[Example cover template.htm](/cover.htm). 

(Note: Two of this will fit in A4)

Asumming that template.htm has 'replaceme' string inside <pre> tags and it's in ~/bin

    sed -e "/replaceme/r tmp.txt" -e "/replaceme/d" ~/bin/template.htm > cover.htm
    
### Merge

[https://unixblogger.com/how-to-easily-merge-pdf-documents-under-linux/](https://unixblogger.com/how-to-easily-merge-pdf-documents-under-linux/)

    sudo apt install poppler-utils
    
    echo **/*.pdf(n) # zsh, 'n' sets the NUMERIC_GLOB_SORT option
    # covers/1.pdf covers/2.pdf covers/3.pdf ...
    
    pdfunite **/*.pdf(n)  covers/1-16.pdf
