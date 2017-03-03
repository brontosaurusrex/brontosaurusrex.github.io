---
published: true
layout: post
date: '2017-03-03 02:22 +0100'
title: python math from bash (bc replacement)
---
    correct=$(echo "print ((-23)-($lufs)+6)" | python3 ) #float
    echo "$correct correct"
   
    correct=$(echo "print (round((-23)-($lufs)+6))" | python3 ) # integer
    echo "$correct correct int"
    
Python3 round returns integer (unlike 2.7).
