---
layout: page
title: bash and friends
published: true
---

## no file for you

    [[ -f /var/log/apt/history.log ]] || exit
    
Will exit if file is not there, same thing should be used if you use cd in your scripts

    cd /some/path || exit
    
This will ensure that script doesn't continue if dir doesn't exist.

## benchmark script

    time for i in $(seq 1000); do script; done
    
They say this is bad due to IO (disk) reads.
    
## remove numerals and fill some variables

    stuff="1680x1050+2880+23"
    read -r h w x y <<< $(echo ${stuff//[!0-9]/ })
    
2nd part is called *special parameter expansion replacing non-numeric characters with space*.

## random word

    # random word dictionary function
    randomword()  {
        dict="/usr/share/dict/words"
        shuf -n1 "$dict" | tr -dc '[:alnum:]\n\r' | tr '[:upper:]' '[:lower:]'
    }
    word=$(randomword)
    
## checks critical and non-critical

    command -v mediainfo >/dev/null 2>&1 || { >&2 echo "I need mediainfo installed." ; exit 1; }
    command -v mediainfo >/dev/null 2>&1 || { >&2 echo "I'd like mediainfo installed." ; }

## dirs and files and paths breakdown

    file=$(readlink -f "$1")       # quasi absolute
    baseext=$(basename "${1}")     # file.ext
    base="${baseext%.*}"           # file
    dir=$(dirname "${file}")       # directory
    
## dump stuff from web pages

    read -r _ temp _<<< $(lynx -dump http://someurl/temp.htm | grep Cityname) && echo "$temp°C"
    
Lynx may be a fat solution, but it's an easy one.

## Check for certain extensions yourself

    # do I need this
    shopt -s extglob
    # If no specific arguments were passed to script then it will check current dir for certain audio extensions itself
    (( $# )) || set -- *.@(mp3|mp4|m4a|flac|ogg|mpc|wav|aif|opus); [[ -e $1 ]] || \
    { echo "No audio files find in this dir (mp3|mp4|m4a|flac|ogg|mpc|wav|aif|opus)"; stty sane; exit 1; }

## rounding math

[https://brontosaurusrex.github.io/2017/06/10/bash-rounding-n-th-time/](https://brontosaurusrex.github.io/2017/06/10/bash-rounding-n-th-time/)
