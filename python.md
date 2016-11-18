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
    
    # define object
    myobjectx = MyClass()    # assign the above class(template) to an object 
    print myobjectx.variable # the variable inside of the newly created object "myobjectx"
    
    # another object of the same class
    myobjecty = MyClass()
    myobjecty.variable = "yackity" # change variable
    print myobjecty.variable
    
## dictionaries

    phonebook = {
        "John" : 938477566,
        "Jack" : 938377264,
        "Jill" : 947662781
    }
    
    # write your code here
    phonebook["Jake"] = 938273443
    del phonebook["Jill"]
    
    # testing code
    if "Jake" in phonebook:
        print "Jake is listed in the phonebook."
    if "Jill" not in phonebook:
        print "Jill is not listed in the phonebook."
        
## modules

[http://www.learnpython.org/en/Modules_and_Packages](http://www.learnpython.org/en/Modules_and_Packages)

    import urllib
    # which functions are implemented in each module
    dir(urllib)
    # When we find the function in the module we want to use, we can read about it more using the help function, inside the Python interpreter
    help(urllib.urlopen)

