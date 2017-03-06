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




