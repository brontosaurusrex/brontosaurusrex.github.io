---
layout: page
title: python learning notes
published: true
---

## echo floating point with 4 digits, "argument specifier"

    f=3.3465922378323784
    print "%.4f" % f

This should also round corectly, giving 3.3466

## objects

    # Objects are an encapsulation of variables and functions into a single entity. Objects get their variables and functions from classes. Classes are essentially a template to create your objects. 
    
    class MyClass:
        variable = "blah"
    
        def function(self):
            print "This is a message inside the class."
            
    myobjectx = MyClass()    # assign the above class(template) to an object 
    print myobjectx.variable # the variable inside of the newly created object "myobjectx"

