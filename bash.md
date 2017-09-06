---
layout: page
title: bash and friends
published: true
---

## no file for you

    [[ -f /var/log/apt/history.log ]] || exit
    
Will exit if file is not there, same thing should be used if you use cd in your scripts

    cd /some/path || exit
    
This will ensure that script doesn't continue if dir doesn't exist. Another way might be:

    config="$HOME/bin/singularity.cfg"
    test -f "$config" && source "$config" >/dev/null || { echo "$config does not exist" ; exit 1; }
    
Do something if directory is there

    [[ -d $HOME/apps/blender ]] && mv "$HOME/apps/blender" "$HOME/apps/blender_bak_$RANDOM"
    
## mkdir

Only if one is not already there, should also be recursive

    mkdir -p ~/tmp/stuff
    
## exit if var is empty

    [[ -z "$url" ]] && (echo "no url for you" && exit 1)

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
    ext="${file##*.}"              # ext
    dir=$(dirname "${file}")       # directory
    
## dump stuff from web pages

    read -r _ temp _<<< $(lynx -dump http://some/link.htm | grep Cityname) && echo "$temp°C"
    
Lynx may be a fat solution, but it's an easy one.

Another interesting option is combo of wget and xml2/html2

    wget http://some/link.htm -O - -o /dev/null | html2 | #more filtering
    
## grep AND

    lynx -listonly -nonumbers -dump https://builder.blender.org/download/ | grep "$bits" | grep linux | grep https | grep tar | head -1
    
Such grep sequence will behave as logical AND, there are other shorter ways.

## Check for certain extensions yourself

    # do I need this
    shopt -s extglob
    # If no specific arguments were passed to script then it will check current dir for certain audio extensions itself
    (( $# )) || set -- *.@(mp3|mp4|m4a|flac|ogg|mpc|wav|aif|opus); [[ -e $1 ]] || \
    { echo "No audio files find in this dir (mp3|mp4|m4a|flac|ogg|mpc|wav|aif|opus)"; stty sane; exit 1; }

## rounding math

[https://brontosaurusrex.github.io/2017/06/10/bash-rounding-n-th-time/](https://brontosaurusrex.github.io/2017/06/10/bash-rounding-n-th-time/)

The idea is you can do all your floating math using bc, but this will give you final rounding that one would somehow expect.

## add path and modify env

This may be usefull to add to scripts that are run from cron

    PATH="/home/ticho/bin/":$PATH
    export LC_ALL=en_US.UTF-8
    
or one could run firefox with a different theme

    GTK_THEME=Adapta launchee firefox
    
see what's out there

    env
    echo $PATH
    
## tmpdir

    # tmp dir http://mywiki.wooledge.org/BashFAQ/062
    tmpdir="/tmp/$RANDOM-$$"
    trap '[ -n "$tmpdir" ] && rm -fr "$tmpdir"' EXIT
    mkdir -m 700 "$tmpdir" || { echo '!! unable to create a tmpdir' >&2; tmpdir=; exit 1; }
    
## I did something audio

    flite -voice rms "I did something" >/dev/null 2>&1
    
## flames?

[https://github.com/brontosaurusrex/brontosaurusrex.github.io/issues](https://github.com/brontosaurusrex/brontosaurusrex.github.io/issues)

## TOC

* TOC
{:toc}
