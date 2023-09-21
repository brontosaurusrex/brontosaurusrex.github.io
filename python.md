---
layout: page
title: python notes
published: true
---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/styles/default.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/highlight.min.js"></script>

## learning links

[http://learnpython.org/](http://learnpython.org/)

## echo floating point with 4 digits, "argument specifier"

    f=3.3465922378323784
    print "%.4f" % f

This should also round corectly, giving 3.3466

## functions

    # function
    def sum_two_numbers(a, b):
        return a + b
    
    # call
    x = sum_two_numbers(1,2)
    print x
    
a placeholder `pass`
    
    def somefunc():
        pass #this is a null statement/placeholder    
        
## Can I have functions at the bottom of the script?

As sort of the `gosub` old basic approach

    def main():
        # my code
    
    def other()
        ....
    
    def another()
        ....
    
    def andmore()
        ....
    
    main()
    
People say yes.

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
    
## lost

In this exercise, you will need to print an alphabetically sorted list of all functions in the re module, which contain the word find

    import re
    
    # Your code goes here
    find_members = []
    for member in dir(re):
        if "find" in member:
            find_members.append(member)
    
    print sorted(find_members)
    
find_members is a `list` type of structure (something similar to array) and `sorted` is a sorting thing (function).

So if i say

    somelist = [9,8,7]
    print sorted(somelist)
    # [7, 8, 9] < should happen
    
## List Comprehensions

> Using a list comprehension, create a new list called "newlist" out of the list "numbers", which contains only the positive numbers from the list, as integers.

After quite some trouble I got this

    numbers = [34.6, -203.4, 44.9, 68.3, -12.2, 44.6, 12.7]
    newlist = []
    
    for stuff in numbers:
        
        #print stuff
        stuff = int(stuff)
        
        if stuff > 0: # this should probably be if 'stuff >= 0:'
            newlist.append(stuff)
        
    print newlist
    
which does work, but the official solution is this 3 liner

    numbers = [34.6, -203.4, 44.9, 68.3, -12.2, 44.6, 12.7]
    newlist = [int(x) for x in numbers if x > 0] # < what is this? Yeah that is an actual 'List Comprehension'
    print(newlist)

## About printf style formatting

    # example
    print "Result: %d" % result
    
[https://en.wikipedia.org/wiki/Printf_format_string](https://en.wikipedia.org/wiki/Printf_format_string)

The `% results` part seems to be called 'string interpolation'.

---

## More ways to print stuff

    v = 10
    print('speed is', v, 'm/s')
    print('speed is ' + str(v) + ' m/s')
    print(f'speed is {v} m/s')

should all produce the same result.

## user input

    var = float(input("enter the number: "))
    x = var ** 2
    print("result", x)

Input seems to be string, so lets convert that to float prior to math stuff.
    
