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


