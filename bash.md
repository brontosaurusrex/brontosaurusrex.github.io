---
layout: page
title: bash and friends
published: true
tags: bash cli
---
## No file for you

    [[ -f /var/log/apt/history.log ]] || exit 1

Will exit if file is not there, same thing should be used if you use cd in your scripts
Note: Actually just using 'exit' should be enough, as it returns the status value of previous command (exit equals to exit $?).

    cd /some/path || exit 1
    
Or do it on a more global level with 

    set -e # script will from now on exit on 1st error

This will ensure that script doesn't continue if dir doesn't exist. Another way might be:

    config="$HOME/bin/singularity.cfg"
    test -f "$config" && source "$config" >/dev/null || { echo "$config does not exist" ; exit 1; }

Do something if directory is there

    [[ -d $HOME/apps/blender ]] && mv "$HOME/apps/blender" "$HOME/apps/blender_bak_$RANDOM"

With if

    file="$HOME/.pcalc.txt"
    if [ -f "$file" ]; then
        tail -n 100 "$file" > "$file.tmp" && mv "$file.tmp" "$file"
    fi

Note that -e would be any file/dir/socket/node, -d is dir and so on

    -b filename - Block special file
    -c filename - Special character file
    -d directoryname - Check for directory Existence
    -e filename - Check for file existence, regardless of type (node, directory, socket, etc.)
    -f filename - Check for regular file existence not a directory
    -G filename - Check if file exists and is owned by effective group ID
    -G filename set-group-id - True if file exists and is set-group-id
    -k filename - Sticky bit
    -L filename - Symbolic link
    -O filename - True if file exists and is owned by the effective user id
    -r filename - Check if file is a readable
    -S filename - Check if file is socket
    -s filename - Check if file is nonzero size
    -u filename - Check if file set-user-id bit is set
    -w filename - Check if file is writable
    -x filename - Check if file is executable

## mkdir

Only if one is not already there, should also be recursive

    mkdir -p ~/tmp/stuff

## Exit if var is empty

    [[ -z "$url" ]] && (echo "no url for you" && exit 1)

## Benchmark script

    time for i in $(seq 1000); do script; done

They say this is bad due to IO (disk) reads.

## Remove numerals and fill some variables
echo "Uh oh. Something went really bad.." >&2
    stuff="1680x1050+2880+23"
    read -r h w x y <<< $(echo ${stuff//[!0-9]/ })

2nd part is called *special parameter expansion replacing non-numeric characters with space*.

## Random word

    randomword()  {
        dict="/usr/share/dict/words"
        if [ -f "$dict" ]; then
            word=$(shuf -n1 "$dict" | tr -dc '[:alnum:]\n\r' | tr '[:upper:]' '[:lower:]')
            # if dict gets us null length then replace with something else
            [ -z "$word" ] && word="$RANDOM"
        else # there is no dict file
            word="$RANDOM"
        fi
        echo "$word"
    }
    word=$(randomword)

## Checks critical and non-critical

    command -v mediainfo >/dev/null 2>&1 || { >&2 echo "I need mediainfo installed." ; exit 1; }
    command -v mediainfo >/dev/null 2>&1 || { >&2 echo "I'd like mediainfo installed." ; }

## Dirs and files and paths breakdown

    file=$(readlink -f "$1")       # quasi absolute
    baseext=$(basename "${1}")     # or
    baseext=${i##*/}               # file.ext
    base="${baseext%.*}"           # file
    ext="${file##*.}"              # ext
    dir=$(dirname "${file}")       # or
    dir=${i%/*}                    # directory

[http://mywiki.wooledge.org/BashFAQ/073](http://mywiki.wooledge.org/BashFAQ/073)

## Dump stuff from web pages

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

## Rounding math

    # awk_round

    awk_round () {
        awk 'BEGIN{printf "%."'$1'"f\n", "'$2'"}'
    }

    awk_round "$1" "$2"

[https://brontosaurusrex.github.io/2017/06/10/bash-rounding-n-th-time/](https://brontosaurusrex.github.io/2017/06/10/bash-rounding-n-th-time/)

The idea is you can do all your floating math using bc, but this will give you final rounding that one would somehow expect.

## awk calc function

    calca() #@ Perform arithmetic, including decimal fractions
    {
    local result=$(awk 'BEGIN { OFMT="%f"; print '"$*"'; exit}')
    case $result in
    *.*0) result=${result%"${result##*[!0]}"} ;;
    esac
    printf "%s\n" "$result"
    }

    calca 1/3

> that characters special to the shell must be escaped or quoted on the
command line. This applies particularly to the multiplication symbol, *.

From the book: Pro Bash Programming

*Not battle-tested, not benchmarked.*

## bc calc function

    calc () {
        echo "scale=5; $*" | bc
    }

    calc 1/2

*Not battle-tested*

or prettier,

    calc2 () {
         bc <<< "scale=5; $*"
    }

but slower than echo/pipe version above. That triple < is called here-string.

## Add path and modify env

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
    tmp="/tmp/$RANDOM-$$"
    trap '[ -n "$tmp" ] && rm -fr "$tmp"' EXIT
    mkdir -m 700 "$tmp" || { echo '!! unable to create a tmpdir' >&2; tmp=; exit 1; }

## tmpdir with more advanced trap calling function

    cleanup () {
    (( debug )) && echo "$?"
    [ -n "$tmp" ] && rm -fr "$tmp"
    tput cnorm
    }

    # tmp dir
    tmp="/tmp/$RANDOM-$$"
    trap cleanup EXIT SIGTERM SIGINT 
    # https://www.gnu.org/software/libc/manual/html_node/Termination-Signals.html
    mkdir -m 700 "$tmp" || { echo '!! unable to create a tmp dir' >&2; tmp=; exit 1; }

## I did something audio

    flite -voice rms "I did something" >/dev/null 2>&1

## isNumber function

    # function
    shopt -s extglob
    isNumber() {
    var="$1"
    # ˇ will fail for numbers like 4.044676226059745e-17 (so called scientific notation)
    if [[ $var = @(*[0-9]*|!([+-]|)) && $var = ?([+-])*([0-9])?(.*([0-9])) ]]; then
      #echo "fine"
      ans="$var"
      true  # return 0
    else
      #echo "bad"
      ans="0"
      false # return 1
    fi
    }

examples

    ans="33.3"
    if isNumber "$ans"; then # do something
    ans="a"
    isNumber "$ans"          # $ans will be 0 if not a number

## Timer (benchmark)

This is useful for timing parts of the script

    # benchmark start
    START=$(date +%s.%N)

    # your script here

    # benchmark end
    END=$(date +%s.%N)
    DIFF=$(echo "$END - $START" | bc)
    echo "done in $DIFF seconds"

for whole thing one could run script as

    time script

## Try until it works

    play() {
        /usr/bin/mpv https://stream/chunklist.m3u8 --no-resume-playback
    }

    until play
    do
      sleep 60
    done

Also works nicely interactively

    until latoya ; do sleep 30 ; done

## Bool 'if'

    value="1"
    ((value)) && echo "is true"

## Command in variable is a NO
[http://mywiki.wooledge.org/BashFAQ/050](http://mywiki.wooledge.org/BashFAQ/050)

> A simple variable string wouldn't work because no other "expansions" happen after word splitting, and that includes recognition of keywords and control operators. Keywords and control operators expanded after word splitting are considered to be just ordinary arguments, and not part of the syntax

## Arrays

### Quasi multidimensional array

    #!/bin/bash

    # 1D array with 'one,two,three' fields
    data=(
    one,two,three
    four,five,six
    seven,eight,nine
    )

    # actualy each line is a single field of array,
    # but we can break the lines with a fancy loop:

    while read -r line; do
        IFS=, read -r app config method <<< "$line"

        echo "$app $config $method"

    done < <(printf '%s\n' "${data[@]}")

### Associative array expansion?

    #!/bin/bash

    # an array here
    declare -A exe
    exe=(
    ["serverOne"]="echo woot" 
    ["job"]="sleep 3" 
    ["myserv"]="neofetch" 
    )

    # this is the exe
    ${exe[serverOne]} 
    ${exe[job]} 
    ${exe[myserv]}

## [[ brackets ]] = Test

(http://mywiki.wooledge.org/BashFAQ/031)[http://mywiki.wooledge.org/BashFAQ/031]

Are used for testing stuff, for example string comparision and it's smarter brother of single [.

    [[ a > b ]] || echo "a does not come after b"
    
## ( brackets ) = Subshell

> Subshell is similar to child, but more info is inherited.

(cd /tmp || exit 1; date > timestamp)
pwd

Cd to /tmp folder is internal to only that subshell. Also if cd would fail, it would only terminate that specific subshell and not the main process.

## { brackets; } = Command grouping

Generally speaking last command must be terminated with ;, unless } is at the start of line

    {   echo "app, config, restart method"
        echo "---, ------, --------------"
        while read -r line; do
            IFS=, read -r app config method <<< "$line"

            
            echo "$app, $config, $method" 
            
          
        done < <(printf '%s\n' "${configs[@]}")
    } | column -s, -t
    
When at the end, use ;

    [[ -f $file ]] || { echo "$file not found"; exit 1; }
    
## <() and ()> brackets = Process Substitution

> A cousin of the pipe is the process substitution operator, which comes in two forms: <() and >(). It’s a convenient way to use named pipes without having to create temporary files. Whenever you think you need a temporary file to do something,
process substitution might be a better way to handle things.
> What it does, is basically run the command inside the parentheses. With the <() operator, the command’s output is put in a something similar to named pipe.

    # diff -y <(head -n 1 .dictionary) <(tail -n 1 .dictionary)
    
Basically diff will see two files.
    
## (( brackets )) = Arithmetic evaluation

    (( 2 == 2 )) && echo true
    echo $(( 2 + 2 ))
    echo "There are $(($rows * $columns)) cells"
    
Roll dice alias

    alias dice='echo $(( RANDOM % 6 + 1 ))'

## Redirects

    ls > file.log 2>&1

should write both stdout and stderr to file.log.

### Cron example where stdout and stderr are separated into two files

    0 0 * * * bin/dropbox start >/tmp/dbstdout.log 2>/tmp/dbstderr.log
    
### Stdout to null

    ls >/dev/null  # same with space: ls > /dev/null
    
### Stderr to null

    ls 2>/dev/null # same with space: ls 2> /dev/null
    
### Stdout and stderr to null

    ls >/dev/null 2>&1
    # same with space: ls > /dev/null 2>&1
    
## Sourcing

Imagine a script named 'woot'

    #!/bin/bash
    cd /tmp

If I ./woot, nothing will change (pwd will stay the same), however if I

    . ./woot      # dotting
    #or
    source ./woot
    
pwd will change.

if woot is somewhere on $PATH, this will also work

    . woot
    
## Find and xz pack

All in this dir, including hidden files

    find . -type f -exec xz {} +   # pack file by file
    find . -type f -exec unxz {} + # unpack file by file
    
xz entire dir as single file (staring from one dir above)

     tar -cf- dir | xz > roboto.tar.xz
     
## Do it maybe

    rotateMaybe () {
    if (( RANDOM %2 )) ; then
        mogrify -rotate 180 "$final"
        printf "r"
    else
        printf "n"
    fi
    }
    
## Restart something

    restart() {
    if pgrep -x "$1" > /dev/null
    then
        (echo "$1 running, restarting"
        killall -w "$1"
        "${1}" &) &
    else
        echo "$1 wasn't running"
    fi
    }
    
    restart wbar
    
## Center text

    centertext(){
        columns=$(tput cols) 
        string="$1" 
        printf "%*s\n" $(((${#string}+columns)/2)) "$string"
    }
    
    centertext "woot"
    
## printf examples

    # round float
    a=3.123456
    printf "%.2f\n" "a"         
    3.12
    printf "%.4f\n" "a"
    3.1235

    # type protection ?
    a="1"
    printf "%d\n" "a"
    1
    a="b"
    printf "%d\n" "a"
    0
    
## Inline block of text to variable

This is not compatible with 'set -e'

    # custom css
    css=$(cat <<'CSS'
    <style type="text/css">
        p       { margin-top: 0; margin-bottom: 0; vertical-align: top; font-family: 'Noto Serif', serif; font-size: large }
        a       { font-family: 'Noto Serif', serif; font-size: large }
        pre     { margin-top: 0; margin-bottom: 0; vertical-align: top; font-size: large }
    </style>''
    CSS
    )
    echo "$css"

## Bash literature

### [https://mywiki.wooledge.org/BashGuide](https://mywiki.wooledge.org/BashGuide)  
They also have a pdf version.

### [https://github.com/dylanaraps/pure-bash-bible](https://github.com/dylanaraps/pure-bash-bible)  
_A collection of pure POSIX sh alternatives to external processes_

### [https://hn.algolia.com/?q=bash](https://hn.algolia.com/?q=bash)  
Search for 'bash' in hacker news.

## Index
{:.no_toc}

* TOC
{:toc}
