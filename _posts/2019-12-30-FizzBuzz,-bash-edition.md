---
published: true
layout: post
date: '2019-12-30 23:48'
title: FizzBuzz, bash edition
tags: bash 
---
[http://wiki.c2.com/?FizzBuzzTest](http://wiki.c2.com/?FizzBuzzTest)

My bash hack

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
    
([c++ version](http://wiki.c2.com/?FizzBuzzInManyProgrammingLanguages) has control char abuse as well)

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
    
Bash [oneliner](https://rosettacode.org/wiki/FizzBuzz#bash)

    for i in {1..100};do((i%3))&&x=||x=Fizz;((i%5))||x+=Buzz;echo ${x:-$i};done

Javascript [oneliner](https://codeburst.io/javascript-breaking-down-the-shortest-possible-fizzbuzz-answer-94a0ad9d128a)

    for(let i=0;i<100;)console.log((++i%3?'':'fizz')+(i%5?'':'buzz')||i)
    
p.s. Returns fizz buzz, instead of Fizz Buzz.
    
Lisp (unknown author).

[https://gist.githubusercontent.com/17320/234d594c433362d2162f99aea474e208/raw/4d2db7b1955a1b4ebf9f26a81583a277b305ef7b/FizzBuzz.lisp](https://gist.githubusercontent.com/17320/234d594c433362d2162f99aea474e208/raw/4d2db7b1955a1b4ebf9f26a81583a277b305ef7b/FizzBuzz.lisp)

    ;; FizzBuzz in Common Lisp
    ;;
    ;; Problem statement:
    ;; "Write a program that prints the numbers from
    ;; 1 to 100. But for multiples of three print “Fizz”
    ;; instead of the number and for the multiples of
    ;; five print “Buzz”. For numbers which are multiples
    ;; of both three and five print “FizzBuzz”."
    ;; 
    ;; Source:
    ;; http://wiki.c2.com/?FizzBuzzTest
    ;; 
    ;; Requirements:
    ;; 
    ;; R1: Must print a sequence from 1 to 100
    ;; R1 assumption: it is a sequence of integers.
    ;; R1 assumption: the sequence increments by one.
    ;; R1 assumption: print refers to output to stdout.
    ;; 
    ;; R2: Given that an element in the sequence is
    ;; divisible by three and also divisible by five,
    ;; print the string "FizzBuzz"
    ;; R2 assumption: the quotes are not part of the output.
    ;; 
    ;; R3: Given that an element in the sequence is
    ;; divisible by three, print "Fizz".
    ;; R3 assumption: see R2 assumption.
    ;; R3 assumption: if an element of the sequence
    ;; meets R2, it is considered that R3 has also
    ;; been met, as the string "Fizz" has been output.
    ;; 
    ;; R4: Given that an element in the sequence is
    ;; divisible by five, print "Buzz".
    ;; R4 assuptions: see assumptions for R3.
    ;; 
    ;; R5: Given that an element in the sequence is
    ;; divisible by neither three or five, output the
    ;; element.
    ;; R5 assumption: a string representation of the
    ;; element is an acceptable output.
    ;; 
    ;; Non-requirements:
    ;; 
    ;; * Ability to process sequences of a different
    ;;   length.
    ;; * Ability to replace elements other than 3 and 5.
    ;; * Ability to define the replacement strings at
    ;;   runtime.
    ;; 
    ;; Design considerations:
    ;; 
    ;; Absent any indications otherwise, it is assumed
    ;; that readability and maintainability are more
    ;; important than code size or performance.
    ;; Nevertheless, the program does not aim to be
    ;; unnecessarily verbose nor too inefficient.
    ;; 

    (defun FizzBuzz ()
        (loop for n from 1 below 101 do
            (
                let (
                    (divisibleByThree (zerop (mod n 3)))
                    (divisibleByFive  (zerop (mod n 5)))
                )

                (cond
                    (
                        (and divisibleByThree divisibleByFive)
                        (write-line "FizzBuzz")
                    )
                    (
                        divisibleByThree
                        (write-line "Fizz")
                    )
                    (
                        divisibleByFive
                        (write-line "Buzz")
                    )
                    (
                        t
                        (format t "~d~%" n)
                    )
                )
            )
        )
    )

The one that [looks correct](http://wiki.c2.com/?FizzBuzz) and reads easily (ruby), but what do I know.

    for n in range(1, 101):
      line = ""
      if n%3 == 0:
          line = line + "Fizz"
      if n%5 == 0:
          line = line + "Buzz"

      if line:
          print line
      else:
          print n
          
Shell with seq and awk

    seq 100 | awk '$0=NR%15?NR%5?NR%3?$0:"Fizz":"Buzz":"FizzBuzz"'
    
Ang [gazzilion others](https://rosettacode.org/wiki/FizzBuzz).
