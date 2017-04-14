---
published: true
layout: post
date: '2017-04-13 12:12 +0200'
title: 'count up clock, after effects, javascript'
---
## expressions

expression (it's a start), to be applied to a text layer 

    // start with beginHr.beginMin, 
    // happens in animLen time, 
    // ends with endHr.endMin
    
    beginHr = 0;
    beginMin = 0;
    endHr = 23;
    endMin = 0;
    animLen = 3; // in seconds
    
    beginTime = (beginHr*60 + beginMin)*60;
    endTime =   (endHr*60 + endMin)*60;
    
    function digits(myVal,myNumDigits){
    var s = myVal.toString();
    while (s.length < myNumDigits) s = '0' + s;
    return s;
    }
    
    // speedup should depends on animLen
    speedup = ((endTime - beginTime)/animLen)
    
    // time = timeline time
    currTime = beginTime + (time * speedup);
    
    hr = digits(Math.floor(currTime/3600),2);
    min = digits(Math.floor((currTime%3600)/60),2);
    
    // stop at specific time
    if (currTime >= endTime) {
    hr = digits((endHr),2);
    min = digits((endMin),2);
    }
    
    // debug display
    // (endTime - beginTime) + " " + speedup + " " + time + ">" + hr + "." + min
    
    // final display
    hr + "." + min
    
[clockCountUp.gif]({{site.baseurl}}/media/clockCountUp.gif)

## layer > Time > Enable Time Remapping

Simple slow down, without any js involved  
![timeRemap.png]({{site.baseurl}}/media/timeRemap.png)

## Easing Functions in Javascript

[https://gist.github.com/gre/1650294](https://gist.github.com/gre/1650294)  
[https://joshondesign.com/2013/03/01/improvedEasingEquations](https://joshondesign.com/2013/03/01/improvedEasingEquations)

## prototype with browser?

[https://www.w3schools.com/html/html5_canvas.asp](https://www.w3schools.com/html/html5_canvas.asp)

[draw a circle with some opening](https://www.w3schools.com/code/tryit.asp?filename=FEMV4HWJHOB7), 
[circle animation ](https://www.w3schools.com/code/tryit.asp?filename=FEMV8DICDA4R), 
[actual clock :)](https://www.w3schools.com/graphics/canvas_clock.asp)
    
## Adobe on the subject

[https://helpx.adobe.com/after-effects/using/expression-examples.html#expression_example_rotate_the_hands_of_a_clock](https://helpx.adobe.com/after-effects/using/expression-examples.html#expression_example_rotate_the_hands_of_a_clock)
    
## svg examples, material
    
![arc_example.svg]({{site.baseurl}}/media/arc_example.svg)
[arc.svg]({{site.baseurl}}/media/arc.svg)
[arc2.svg]({{site.baseurl}}/media/arc2.svg)
[arc3.svg]({{site.baseurl}}/media/arc3.svg)
[arc4.svg]({{site.baseurl}}/media/arc4.svg)
[arc5.svg]({{site.baseurl}}/media/arc5.svg)
[arc6.svg]({{site.baseurl}}/media/arc6.svg)
