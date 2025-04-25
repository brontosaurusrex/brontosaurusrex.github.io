---
published: true
layout: post
date: '2025-04-24 12:42'
title: Lisp on Debian
tags: misc cli linux 
---
## Install common lisp and rlwrap

    sudo apt install sbcl rlwrap

> rlwrap  runs  the specified command, intercepting user input in order to provide readline's line editing.

## Run lisp repl

    rlwrap sbcl

## Test

    (+ 1 2 3)
    ; should return 6

Hello world (~% stands for newline)

    (format t "hello world~%")

Hello world as a function

    (defun hello-world () (format t "hello world~%"))
    (hello-world)

Hello world as a selfpropeled script with shebang that works on Debian

    #!/usr/bin/sbcl --script
    (format t "hello world~%")

## Books
<https://gigamonkeys.com/book/>  
> Practical Common Lisp published by Apress These pages now contain the final text as it appears in the book.
