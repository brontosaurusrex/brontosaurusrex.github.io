---
published: true
layout: post
date: '2020-02-17 20:38'
title: Youtube to audio CD
tags: audio mine 
---
## Download

    youtube-dl -i -f 140 playlist
    
## Convert to 44.1 khz EBUr128 wav files 

ready to burn [toWavCd](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/toWavCD). This is part of singularity and it will not run standalone.

## Touch by date, in original download folder

    ls -chtr > ~/data/output/byDate.txt
    # replace all .m4a with .wav

in wav (~/data/output)
    
    #test
    cat byDate.txt | while read line; do echo "$line"; done
    #touch
    cat byDate.txt | while read line; do touch "$line"; done
    
This could/should be avoided by actually converting this files in correct order.

## A script to populate folders by size

FIXME: Assumes and doesn't check if there is a single file bigger than 690 MB.

    #!/bin/bash

    # populate

    cd="1"
    mkdir -p "$cd"

    # main
    cat byDate.txt | while read -r line; do 

        echo "$cd $line"
        
        size="$(du -m "$cd" | cut -f1)"
        
        if (( size > 690 )); then
        
            rm "$cd/$prev"
        
            ((cd=cd+1))
            mkdir -p "$cd"
            
            cp "$prev" "$cd"
            
        else
            
            cp "$line" "$cd"
            
        fi
        
        # store previous line
        prev="$line"
        
        #sleep 1
        
    done
    
Should be run inside that wav folder as ./script. Size of each folder might be checked with

    cd 1
    du -mc *

## Burn

k3b.

## Simple pdf cover for printing, 12x12cm

Generate txt file declaring cd structure. todo: Maybe add length of track (3'34") and maybe full running time 01:12:02, maybe add simple waveform to each track.

    # txt
    printf '(%s)\n' "${PWD##*/}" > tmp.txt \
    && ls -chtr *.wav | rev | cut -d- -f1 --complement | rev | nl -n rz -w 2 -s '. ' >> tmp.txt
    
    # where 
    # rev | cut -d- -f1 --complement | rev 
    # cuts of the last part after last '-'
    # and 
    # nl -n rz -w 2 -s '. '
    # adds line numbers (cd track number)
    
And some pdf from that (bad)
    
    # pdf - enscript
    enscript -p out.ps tmp.txt
    ps2pdf out.ps out.pdf # size???
    
### Html template that should print to exactly 120x120 mm

[Example cover template.htm](/cover.htm). 

(Note: Two of this will fit in A4)

Asumming that template.htm has 'replaceme' string inside <pre> tags

    sed -e "/replaceme/r tmp.txt" -e "/replaceme/d" template.htm > cover.htm
