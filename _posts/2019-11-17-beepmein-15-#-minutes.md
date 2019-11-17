---
published: true
layout: post
date: '2019-11-17 01:53'
title: beepmein
tags: cli bash mine 
---
A [reminder/alarm script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/beepmein) using 'at' as back.

    beepmein now + 3 minutes 
            ^                
            'at' time format
            
    beepmein 22:10
            ^
            also 'at' time format
            
    beepmein 3
            ^                
            in 3 minutes (beepmein shortcut)
            
    beepmein --alarm 8:00 
              ^
              Will play (longer) audio sample,
              that you defined by setting alarmSample.
              Stop with 'killall mpv'.
              --alarm must be first parameter.

    beepmein --test # test beep and notification

    # More testing
    beepmein --reaction reminder_text
    beepmein --reaction --alarm alarm_text

    killall beepmein # kill all running playback,
                      will not remove set 'at' timers.
            
    # Notes:
    at -l       # will list pending jobs (or atq)
    at -r <num> # will remove job <num>  (or atrm)

[Some debate](https://forums.bunsenlabs.org/viewtopic.php?id=6257).
