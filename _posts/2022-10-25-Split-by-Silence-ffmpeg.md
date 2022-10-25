---
published: true
layout: post
date: '2022-10-24 23:10'
title: Split by Silence, ffmpeg
tags: audio 
---
## Split by silence (very fragile)

silence detection v1

    input="80s.m4a"
    quiet=(-hide_banner -loglevel info -nostats)
    ffmpeg "${quiet[@]}" -i "${input}" -af silencedetect=n=-50dB:d=1 -f null - 2> | awk '{ print $4, $5}' | grep "silence_" > detect.log

Returns

    silence_start: 447.672
    silence_end: 449.415
    silence_start: 674.288
    silence_end: 677.722
    silence_start: 677.899
    ...

Now, my 1st song start is probably 1st silence_end (-ss), having the spliting command in mind

    ffmpeg "${quiet}" -i "${input}" -ss 449.415 -to 674.288 -c:a copy test.m4a

Rename to -ss and -to

    sed -i 's/silence_end:/-ss/g' detect.log
    sed -i 's/silence_start:/-to/g' detect.log

silence detection v2, real one

    ffmpeg "${quiet[@]}" -i "${input}" -af silencedetect=n=-50dB:d=0.5 -f null - 2>&1 | \
    awk '{ print $4, $5}' | grep "silence_" | sed 's/silence_end:/-ss/g' | sed 's/silence_start:/-to/g' \
    | tail -n +2 > detect.log

Returns

    -ss 449.415
    -to 674.288
    -ss 677.722
    -to 677.899
    ...

Tail shall skip 1st line.

Add empty line

    echo >> detect.log

Note: If 1st is to be ignored, that means that the file is required to start with some silence

Test loop

    awk_round () {
    awk 'BEGIN{printf "%."'$1'"f\n", "'$2'"}'
    }

    c="1"
    cat detect.log | while read _ ssvar; read _ tovar; do
        #pad name
        printf -v name "%03d" "$c"
        # action
        ssvar="$(awk_round "5" "$ssvar")"
        tovar="$(awk_round "5" "$tovar")"
        echo "-ss $ssvar -to $tovar $name.m4a"
        (( c++ ))
    done

The split loop, real one

    awk_round () {
    awk 'BEGIN{printf "%."'$1'"f\n", "'$2'"}'
    }
    round () { 
    ssvar="$(awk_round "5" "$ssvar")"
    tovar="$(awk_round "5" "$tovar")"
    }

    c="1"
    quiet=(-hide_banner -loglevel info -nostats -nostdin)
    cat detect.log | while read _ ssvar; read _ tovar; do
        #pad name
        printf -v name "%03d" "$c"
        # action

        echo; echo "-ss $ssvar -to $tovar"
        echo "--------------------------------------"
        if [ -z "$tovar" ]; then 
            round && ffmpeg "${quiet[@]}" -i "${input}" -ss "$ssvar" -c:a copy "${name}".m4a
        else
            round && ffmpeg "${quiet[@]}" -i "${input}" -ss "$ssvar" -to "$tovar" -c:a copy "${name}".m4a
        fi
        (( c++ ))
    done

## Split by yt 'chapters' file

Example 'list.txt'

    0:00 As It Was - Harry Styles
    2:39 Stay - The Kid LAROI with Justin Bieber
    4:57 Bad Habits - Ed Sheeran 
    8:42 Unstoppable - Sia
    12:17 Memories - Maroon 5
    15:22 Dance Monkey - Tones and I
    18:49 Girls Like You - Maroon 5
    22:26 On My Way - Alan Walker, {Ft. Sabrina Carpenter and Farruko}
    25:40 Senorita - Camila Cabello and Shawn Mendes
    28:50 Shake It Off - Taylor Swift
    32:26 Don't Wanna Know - Maroon 5
    36:00 Love Yourself - Justin Beiber
    39:52 Cheap Thrills - Sia
    43:24 One More Night - Maroon 5
    47:03 Perfect - Ed Sheeran
    51:26 Don't Let Me Down - The Chainsmokers
    54:57 Shape Of You - Ed Sheeran 
    58:50 Kill Em With Kindness - Selena Gomez
    1:02:28 No Tears Left To Cry - Ariana Grande
    1:05:57 Love Me Like You do ~ Ellie Goulding

Add empty line

echo >> list.txt

Test loop

    c="1"
    cat list.txt | while read ssvar name ; read tovar _ ; do
        # action
        echo "-ss $ssvar -to $tovar $name.m4a"
        (( c++ ))
    done
    # Nope

maybe

    lines="$(wc -l list.txt)"
    echo $lines
    # then read 1 2
                2 3
                4 5
                ect

<https://stackoverflow.com/questions/6022384/bash-tool-to-get-nth-line-from-a-file>

to be continued ...