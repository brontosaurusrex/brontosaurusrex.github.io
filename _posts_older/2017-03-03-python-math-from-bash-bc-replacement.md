---
published: true
layout: post
date: '2017-03-03 02:22 +0100'
title: Python math from bash (bc replacement)
---
    correct=$(echo "print ((-23)-($lufs)+6)" | python3 ) #float
    echo "$correct correct"
   
    correct=$(echo "print (round((-23)-($lufs)+6))" | python3 ) # integer
    echo "$correct correct int"
    
Python3 round returns integer (unlike 2.7).

As function

    calc() { python3 -c "print($*)"; }
    
Example usage

    calc 'round(5.3)'
    5
    
    a=$(calc 'round(5.3)')
    echo $a
    5
    
    a=$(calc 'round(5.5)')
    echo $a
    6
    
    calc 5*5
    25
    
    calc 5*5.1
    25.5
    
    calc 5*5.1345845783457349573495
    25.672922891728675
    
    calc 'round(-5.5)'
    -6
    
Note: Function is certainly NOT safe for random user input, basically it can run any python, for example:

    calc '"moo");import os;print(os.stat(".")'
