---
published: true
layout: post
date: '2019-07-01 16:21'
title: Hours and Minutes to Angle
tags: cli bash 
---
[https://www.mathcelebrity.com/clockangle.php?num=9%3A20&pl=Clock+Angle](https://www.mathcelebrity.com/clockangle.php?num=9%3A20&pl=Clock+Angle)

For example 21:20

    # 21-12=9 and    
    h=9
    m=20
    echo "((60*$h)+$m)/2" | bc 
    280 # = Angle
    
Because there is 12*60=720 minutes in full circle, so 720/360 is 2.

Svg printout: [https://stackoverflow.com/questions/32921322/svg-marker-can-i-set-length-and-angle](https://stackoverflow.com/questions/32921322/svg-marker-can-i-set-length-and-angle)
