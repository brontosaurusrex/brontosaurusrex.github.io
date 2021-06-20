---
published: true
layout: post
date: '2021-05-22 11:53'
title: Epub2txt without X
tags: linux cli luv 
---
[https://github.com/kevinboone/epub2txt2](https://github.com/kevinboone/epub2txt2)

> epub2txt is a simple command-line utility for extracting text from EPUB documents and, optionally, re-flowing it to fit a text display of a particular number of columns. It is written entirely in ANSI-standard C, and should run on any Unix-like system with a C compiler. It is intended for reading EPUB e-books on embedded systems that can't host a graphical EPUB viewer, or converting such e-books to read on those systems.

Example usage:

    epub2txt -a -n in.epub > in.txt

where

    -a,--ascii         try to output ASCII only
    -n,--noansi        don't output ANSI terminal codes

Note: Calibre comes with various conversion tools, but they seem to require running X.org, this one doesn't.
