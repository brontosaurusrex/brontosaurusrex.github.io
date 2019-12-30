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

With array by [emilwest](https://www.reddit.com/r/bash/comments/6rs6sr/writing_fizzbuzz_in_bash/)

    #!/bin/bash
    # declare an indexed array since order is important
    declare -a words
    words[3]=Fizz
    words[5]=Buzz
    for i in {1..100}; do
        output=""
        # iterate array indexes
        for index in "${!words[@]}"; do
            if (($i % $index == 0 )); then output+="${words[$index]}"; fi
        done  
        if [ -z $output ]; then output=$i; fi
        printf "%s\n" $output
    done

Javascript [oneliner](https://codeburst.io/javascript-breaking-down-the-shortest-possible-fizzbuzz-answer-94a0ad9d128a)

    for(let i=0;i<100;)console.log((++i%3?'':'fizz')+(i%5?'':'buzz')||i)
