---
published: true
layout: post
date: '2024-09-09 14:05'
title: CSV from bash
tags: 
---
## csvkit

Install csv kit:

    sudo apt install csvkit

Find column by name 'foto one' and assign row 21 to some bash variable:

    foto1="$(csvcut -c 'foto one' file.csv | head -21 | tail -1)"

Assuming the var is url, download with specific name:

    curl "${foto1}" -o foto1.jpg

or as oneliner:

    curl "$(csvcut -c 'foto one' file.csv | head -21 | tail -1)" -o foto1.jpg

Maybe some checks:

    file -b foto1.jpg | grep 'JPEG image data' && echo "is jpeg"

## cut and awk

Notes: Both 'cut' and 'awk' have some limitations, it appears that csvkit is the goat.

Cut example:

    cut -d ',' -f5,6 data.csv | head -10 | tail -1
    # returns:
    "RIFLE,5.56 MILLIMETER"

which means that the field was recognized as two fields (wrong).

Awk example:

    awk -v FPAT='([^,]+)|("[^"]+")' '{print $5}' data.csv | head -10 | tail -1
    # returns correct:
    "RIFLE,5.56 MILLIMETER"

seems correct, but look at the complexity.

## other notes

Instead of

    head -10 | tail -1

weirdness to select a single line, one can use awk

    awk 'NR==10'

but awk solution appears to be slightly slower.
