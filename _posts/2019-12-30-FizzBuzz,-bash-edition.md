---
published: true
layout: post
date: '2019-12-30 23:48'
title: FizzBuzz, bash edition
tags: bash 
---
    #!/bin/bash

    # FizzBuzz, bash edition

    # Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

    for i in {1..100}; do

        echo -n "$i"
        
        if (( i % 3 == 0 )); then
            echo -ne "\\rFizz" # \r deletes the line
            three="1" # bool, divisible by 3
        fi
        
        if (( i % 5 == 0 )); then
            if (( three )); then
                echo -ne "Buzz" # add to Fizz
            else
                echo -ne "\\rBuzz" # delete the line
            fi
        fi
        
        echo # newline
        
        three=""

    done
