---
published: true
layout: post
date: '2018-01-15 22:21 +0100'
title: 'cli csv, column'
---
get something from nvidia-smi, with column use ',' as separator and -t does something as well

	nvidia-smi --query-gpu=index,utilization.gpu,power.draw,clocks.sm,fan.speed,temperature.gpu --format=csv | column -s, -t
    
or something that may look good on this blog

	nvidia-smi --query-gpu=index,utilization.gpu,fan.speed,temperature.gpu --format=csv | column -s, -t

may return

    index   utilization.gpu [%]   fan.speed [%]   temperature.gpu
    0       86 %                  70 %            64
    1       86 %                  70 %            65
    2       86 %                  70 %            65

