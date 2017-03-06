---
published: true
layout: post
date: '2017-03-06 15:33 +0100'
title: matplotlib (python)
---
This is in Debian repos. 

    sudo apt install python-matplotlib
    
[http://matplotlib.org/users/screenshots.html](http://matplotlib.org/users/screenshots.html)
    
![](http://matplotlib.org/_images/polar_scatter_demo.png)

Example Sigmoid

    import math 
    
    def sigmoid(x):
        a = []
        for item in x:
            a.append(1/(1+math.exp(-item)))
        return a
    
    import matplotlib.pyplot as plt
    import numpy as np
    
    x = np.arange(-5., 5., 1)
    sig = sigmoid(x)
    plt.plot((x+10)*4.5,sig)
    
    #plt.grid()

    plt.scatter((x+10)*4.5,sig)
    plt.show()
    
    print ((x+10)*4.5,sig)
    
![sigmoid.png]({{site.baseurl}}/media/sigmoid.png)

from [http://squall0032.tumblr.com/post/77300791096/plotting-a-sigmoid-function-using](http://squall0032.tumblr.com/post/77300791096/plotting-a-sigmoid-function-using)

edit: this is what I probably want (logistic function)

    import math 
    from scipy.stats import logistic

    import matplotlib.pyplot as plt
    import numpy as np

    x = np.arange(-4, -1, 0.2)
    y = logistic.pdf(x)

    x2 = x*10+60
    y2 = y*300

    #plt.plot(y2,x2)

    plt.scatter(y2,x2)

    print(y2,x2)

    plt.show()

![logistic.png]({{site.baseurl}}/media/logistic.png)

Some data in seconds, frames (14 clips + last(long)), use that in reverse order so that dynamic increases + 1 last long shot.

    20  5.29881186  1.1     = 1s 3f
    22  6.42074428  1.4     = 1s 10f
    24  7.76687805  1.6     = 1s 15f
    26  9.3757403   1.9     = 1s 23f
    28  11.28953069 2.25    = 2s 6f
    30  13.55299792 2.65    = 2s 16f
    32  16.21143443 3.1     = 3s 3f
    34  19.30748975 3.6     = 3s 16f
    36  22.87649972 4       = 4s
    38  26.94009871 4.6     = 4s 15f
    40  31.49807562 5       = 5s
    42  36.51880209 5.4     = 5s 10f
    44  41.92913758 5.7     = 5s 18f
    46  47.60546925 5.8     = 5s 20f
    48  53.36833219
    
    # assuming 25fps
