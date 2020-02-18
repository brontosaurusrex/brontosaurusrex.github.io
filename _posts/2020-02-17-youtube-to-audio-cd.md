---
published: true
layout: post
date: '2020-02-17 20:38'
title: Youtube to audio CD wip
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

## A script to populate folders by size

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

    # txt
    ls -chtr *.wav | rev | cut -d- -f1 --complement | rev | nl -n rz -w 2 -s '. ' > tmp.txt
    
    # where 
    # rev | cut -d- -f1 --complement | rev 
    # cuts of the last part after last '-'
    # and 
    # rev | cut -d- -f1 --complement | rev 
    # adds line numbers (cd track number)
    
And some pdf from that (bad)
    
    # pdf - enscript
    enscript -p out.ps tmp.txt
    ps2pdf out.ps out.pdf # size???
    
### Or better, a html template that should print to exactly 120x120 mm

    <html>
    <head>
      <meta charset="utf-8">
      <title>cover</title>

    <link href="https://fonts.googleapis.com/css?family=Lacquer&display=swap" rel="stylesheet">

      <style>
        @page { 
            
            size: 120mm 120mm;
            padding: 0;
            margin: 0; 
        } 

        body {
            
            height:120mm;
            width:120mm;
            
            border: dotted black;
            border-width: thin;
            overflow:hidden;
            display:block;
            
            margin: 0; 
            padding: 5mm; 
            
        }
        
       
        pre {
             overflow:hidden;
             text-overflow: ellipsis;
            
             font-family: 'Lacquer', sans-serif;

             font-size: 100%;
        }
        


      </style>
    </head>

    <body>

    <pre>
    01. Taylor Swift - You Belong With Me
    02. Ariana Grande - no tears left to cry
    03. Bruno Mars - Finesse (Remix) (feat. Cardi B] [Official Video]
    04. Jonas Blue - Rise ft. Jack & Jack
    05. Avicii - Hey Brother (Lyric)
    06. Anne-Marie - 2002 [Official Video]-Il
    07. Shawn Mendes - There's Nothing Holdin' Me Back
    08. G-Eazy & Halsey - Him & I (Official Music Video)-SA7AIQw
    09. Kygo & Imagine Dragons - Born To Be Yours (Lyric Video)
    10. Lady Gaga, Bradley Cooper - Shallow (A Star Is Born)
    11. Billie Eilish, Khalid - lovely
    12. Billie Eilish - when the party's over
    13. Jackson Penn - Sick in the Head [Official Video]
    14. Wiz Khalifa - See You Again ft. Charlie Puth [Official Video] Furious 7 Soundtrack
    15. Halsey - Without Me
    16. Passenger _ Let Her Go (Official Video)
    17. Winona Oak - Break My Broken Heart [Official Video]
    18. Sam Smith - I'm Not The Only One (Official Video)
    19. Sam Smith - Too Good At Goodbyes (Official Video)


    </pre>

    </body>
    </html>

[example](/cover.htm).
