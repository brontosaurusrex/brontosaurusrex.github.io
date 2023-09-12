---
published: true
layout: post
date: '2016-11-13 17:23 +0100'
title: bc in urxvt and Linux calculators
---
[https://forums.bunsenlabs.org/viewtopic.php?id=3000](https://forums.bunsenlabs.org/viewtopic.php?id=3000)

    $ echo "$((20.0/7))"
    $ awk "BEGIN {print (20+5)/2}"
    $ zcalc
    $ bc <<< 20+5/2
    $ bc <<< 'scale=4;20+5/2'
    $ expr 20 + 5
    $ calc 2 + 4
    $ node -pe 20+5/2  # Uses the power of JavaScript, e.g. : node -pe 20+5/Math.PI
    $ echo 20 5 2 / + p | dc 
    $ echo 4 k 20 5 2 / + p | dc 
    $ perl -E "say 20+5/2"
    $ python -c "print 20+5/2"
    $ python -c "print 20+5/2.0"
    $ clisp -x "(+ 2 2)"
    $ lua -e "print(20+5/2)"
    $ php -r 'echo 20+5/2;'
    $ ruby -e 'p 20+5/2'
    $ ruby -e 'p 20+5/2.0'
    $ guile -c '(display (+ 20 (/ 5 2)))'
    $ guile -c '(display (+ 20 (/ 5 2.0)))'
    $ slsh -e 'printf("%f",20+5/2)'
    $ slsh -e 'printf("%f",20+5/2.0)'
    $ tclsh <<< 'puts [expr 20+5/2]'
    $ tclsh <<< 'puts [expr 20+5/2.0]'
    $ sqlite3 <<< 'select 20+5/2;'
    $ sqlite3 <<< 'select 20+5/2.0;'
    $ echo 'select 1 + 1;' | sqlite3 
    $ psql -tAc 'select 1+1'
    $ R -q -e 'print(sd(rnorm(1000)))'
    $ r -e 'cat(pi^2, "\n")'
    $ r -e 'print(sum(1:100))'
    $ smjs
    $ jspl
    
from [http://unix.stackexchange.com/questions/40786/how-to-do-integer-float-calculations-in-bash-or-other-languages-frameworks](http://unix.stackexchange.com/questions/40786/how-to-do-integer-float-calculations-in-bash-or-other-languages-frameworks)