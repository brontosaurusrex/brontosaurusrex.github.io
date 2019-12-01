---
published: true
layout: post
date: '2019-12-01 14:14'
title: Time to some 'at' event
tags: linux bash 
---
{% highlight bash %}
    #!/bin/bash

    # timeToEvent

    # Time to some 'at' event in HH:MM:SS

    # Now time
    now="$(date +%s)"

    # function, $1 = at job number
    timeToEvent() {
        # job Event time
        event="$(atq | grep ^"$1" | cut -d' ' -f 2-6)" # cut instead of awk?
        if [[ "$event" ]]; then

            event="$(date -d "$event" +%s)"
            diff=$(( event - now ))

            # And show as HH:MM:SS, only if less than 24 hours
            # 24 hours is 86400 seconds
            if (( diff < 86400 )); then
                date -u -d @${diff} +%T
            fi
        fi
    }

    job="480" # example
    timeToEvent "$job"
{% endhighlight %}

Implemented slightly differently in [pipeBeepmein](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/pipeBeepmein) jgmenu script.
