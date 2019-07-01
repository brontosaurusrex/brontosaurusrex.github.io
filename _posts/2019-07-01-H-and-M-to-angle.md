---
published: true
layout: post
date: '2019-07-01 16:21'
title: H and M to angle
tags: cli bash 
---
[https://www.mathcelebrity.com/clockangle.php?num=9%3A20&pl=Clock+Angle](https://www.mathcelebrity.com/clockangle.php?num=9%3A20&pl=Clock+Angle)

    h=9
    m=20
    echo "((60*$h)+$m)/2" | bc 
    280
    
Because there is 12*60=720 minutes in full circle, so 720/360 is 2.
