---
published: true
layout: post
date: '2018-01-15 22:21 +0100'
title: 'cli csv, column'
---
get something from nvidia-smi, with column use ',' as separator and -t does something as well

	nvidia-smi --query-gpu=index,utilization.gpu,power.draw,clocks.sm,fan.speed,temperature.gpu --format=csv | column -s, -t

may yield

    index   utilization.gpu [%]   power.draw [W]   clocks.current.sm [MHz]   fan.speed [%]   temperature.gpu
    0       86 %                  124.29 W         2012 MHz                  70 %            64
    1       86 %                  120.24 W         1987 MHz                  70 %            65
    2       89 %                  124.77 W         1999 MHz                  70 %            65
