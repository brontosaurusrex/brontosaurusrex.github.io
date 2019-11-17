---
published: true
layout: post
date: '2019-11-17 03:32'
title: cli synths
tags: audio linux 
---
## sox

[https://www.audiosciencereview.com/forum/index.php?threads/howto-sox-audio-tool-as-a-signal-generator.4242/#post-97195](https://www.audiosciencereview.com/forum/index.php?threads/howto-sox-audio-tool-as-a-signal-generator.4242/#post-97195)


Sox play sweep from 20Hz to 5KHz in 1 second

    play -V -r 48000 -n synth 1 sin 20+5000

Reversed and shorter, sounds like a bird

    play -V -r 48000 -n synth .1 sin 5000+20
    
from man sox

    play -n -c1 synth sin %-12 sin %-9 sin %-5 sin %-2 fade h 0.1 1 0.1
    # plays a synthesised ’A minor seventh’ chord with a pipe-organ sound

from man, plays a lil melody

    play -n synth 2.5 sin 667 gain -5 bend .35,180,.25 .15,740,.53 0,-520,.3
    # an initial tone is generated, then bent three times, 
    # yielding four different notes in total

from man, chime

    play -n synth -j 3 sin %3 sin %-2 sin %-5 sin %-9 \
    sin %-14 sin %-21 fade h .01 2 1.5 delay \
    1.3 1 .76 .54 .27 remix - fade h 0 2.7 2.5 norm -1

from man, guitar chord

    play -n synth pl G2 pl B2 pl D3 pl G3 pl D4 pl G4 \
    delay 0 .05 .1 .15 .2 .25 remix - fade 0 4 .1 norm -1
    
[http://scruss.com/blog/2017/12/19/synthesizing-simple-chords-with-sox/](http://scruss.com/blog/2017/12/19/synthesizing-simple-chords-with-sox/)

glisando up

    play -n -r 48000 synth pl "F2" pl "G2" pl "C3" pl "D3" pl "E3" pl "F3" pl "F#3" pl "G3" pl "A3" pl "A#3" pl "B3" pl "C4" pl "C#4" pl "D4" pl "D#4" pl "E4" pl "F4" pl "F#4" pl "G4" pl "G#4" pl "A4" pl "A#4" pl "B4" pl "C5" pl "C#5" pl "D5" pl "D#5" pl "E5" pl "F5" pl "F#5" pl "G5" pl "G#5" pl "A5" pl "A#5" pl "B5" pl "C6" delay 0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9 0.95 1 1.05 1.1 1.15 1.2 1.25 1.3 1.35 1.4 1.45 1.5 1.55 1.6 1.65 1.7 1.75 remix - fade 0 6 .1 norm -1

glisando down
    
    play -n -r 48000 synth pl "C6" pl "B5" pl "A#5" pl "A5" pl "G#5" pl "G5" pl "F#5" pl "F5" pl "E5" pl "D#5" pl "D5" pl "C#5" pl "C5" pl "B4" pl "A#4" pl "A4" pl "G#4" pl "G4" pl "F#4" pl "F4" pl "E4" pl "D#4" pl "D4" pl "C#4" pl "C4" pl "B3" pl "A#3" pl "A3" pl "G3" pl "F#3" pl "F3" pl "E3" pl "D3" pl "C3" pl "G2" pl "F2" delay 0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9 0.95 1 1.05 1.1 1.15 1.2 1.25 1.3 1.35 1.4 1.45 1.5 1.55 1.6 1.65 1.7 1.75 remix - fade 0 6 .1 norm -1
