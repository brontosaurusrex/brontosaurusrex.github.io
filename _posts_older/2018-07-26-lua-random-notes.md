---
published: true
layout: post
date: '2018-07-26 10:01 +0200'
title: 'LUA, random notes'
---
## Roberto Ierusalimschy - Programming in Lua, Third Edition (2013, Lua.org)

    -- lua 5.3

    -- read 3 lines, storing them in a table
    a = {}
    for i = 1, 3 do
    a[i] = io.read()
    end

    -- manual print the lines
    for c = 1, #a do
    print(a[c])
    end

Where # is a length operator, it returns the last index or the length of the sequence.

> The length operator works on strings and tables. On strings, it gives the number of bytes in the string. On tables, it gives the length of the sequence represented by the table. The length operator provides several common Lua idioms for
manipulating sequences:

    print(a[#a]) -- prints the last value of sequence 'a'
    a[#a] = nil -- removes this last value
    a[#a + 1] = v -- appends 'v' to the end of the list
    
Where sequence is a list without holes.

> A useful Lua idiom is 

    x = x or v

> which is equivalent to

    if not x then x = v end

> Another useful idiom is

    (a and b) or c

> or simply

    a and b or c
    
> because and has a higher precedence than or. 

To be continued ...

