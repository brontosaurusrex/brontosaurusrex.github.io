---
published: true
layout: post
date: '2024-09-09 14:05'
title: CSV from bash
tags: 
---
Install csv kit:

    sudo apt install csvkit

Find column by name 'foto one' and assign row 21 to some bash variable:

    foto1="$(csvcut -c 'foto one' file.csv | head -21 | tail -1)"

Assuming the var is url, download with specific name:

    curl "${foto1}" -o foto1.jpg

or as oneliner:

    curl "$(csvcut -c 'foto one' file.csv | head -21 | tail -1)" -o foto1.jpg
