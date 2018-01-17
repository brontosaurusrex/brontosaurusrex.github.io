---
published: true
layout: post
date: '2017-05-19 12:42 +0200'
title: tree index for my intranet site
tags: mine bash
---
    tree -T "" -C --noreport -H . /home/ticho/public_html/ > /home/ticho/public_html/tree.htm
    
 with some cleaning
 
    #!/bin/bash
    # set -x
    # htmltree

    indir="/home/ticho/public_html/"
    outfile="/home/ticho/public_html/tree.htm"

    tree -T "" -C --noreport -H . "$indir" > "$outfile"

    sed -i '/<style type=\"text\/css\">/,/<\/style>/d' "$outfile"
    sed -i '/<p class=\"VERSION\">/,/<\/p>/d' "$outfile"
    sed -i '/<h1><\/h1>/d' "$outfile"
    sed -i '/<hr>/d' "$outfile"

    # echo "<link rel="stylesheet" type="text/css" href="/dirlist.css">" >> "$outfile"
    
every 10 minutes from crontab -e

    */10 * * * * ~/bin/htmltree 2>/tmp/stderrHtmltree.log
