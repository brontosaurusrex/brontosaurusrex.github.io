---
published: true
layout: post
date: '2023-03-15 13:46'
title: Using Imagemagick to Create Contact Sheets
tags: cli linux 
---
<https://patdavid.net/2013/04/using-imagemagick-to-create-contact/>

    montage -verbose -label '%f' -font Helvetica -pointsize 10 -background '#000000' -fill 'gray' -define jpeg:size=200x200 -geometry 200x200+2+2 -auto-orient *.jpg montage.jpg
