---
published: true
layout: post
date: '2017-04-13 12:12 +0200'
title: 'count up clock, after effects, javascript'
---
## expressions

expression (it's a start), to be applied to a text layer

    beginHr = 0;
    beginMin = 0;
    
    beginTime = (beginHr*60 + beginMin)*60;
    
    function digits(myVal,myNumDigits){
    var s = myVal.toString();
    while (s.length < myNumDigits) s = '0' + s;
    return s;
    }
    
    // speedup should actually be calculated so that animation
    // happens in same exact amount of time, no matter what
    // the end time is
    speedup = 3000; 
    currTime = (beginTime + time) * speedup;
    
    hr = digits(Math.floor(currTime/3600),2);
    min = digits(Math.floor((currTime%3600)/60),2);
     
    // stop at specific time
    if (hr >= 23) {
    hr = digits((23),2);
    min = digits((0),2);
    }
    
    hr + "." + min
    
## svg examples, material
    
![arc_example.svg]({{site.baseurl}}/media/arc_example.svg)
![arc.svg]({{site.baseurl}}/media/arc.svg)
![arc2.svg]({{site.baseurl}}/media/arc2.svg)
![arc3.svg]({{site.baseurl}}/media/arc3.svg)
![arc4.svg]({{site.baseurl}}/media/arc4.svg)
![arc5.svg]({{site.baseurl}}/media/arc5.svg)
![arc6.svg]({{site.baseurl}}/media/arc6.svg)


