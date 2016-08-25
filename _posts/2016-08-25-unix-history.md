---
published: true
layout: post
date: '2016-08-25 11:59 +0200'
title: Unix history
---
[https://www.princeton.edu/~hos/frs122/unixhist/finalhis.htm](https://www.princeton.edu/~hos/frs122/unixhist/finalhis.htm)

Only a shared file system

> Development of Unix did not actually begin as work on an operating system. Rather, the small group of computer scientists who had seen their positions on the Multics project evaporate at Bell Labs' exit set out to create a file system that could be shared efficiently within their workgroup. The operating system was little more than an afterthought resulting from a need to test this file system.

Taking out the ideas that were known, but for some reason not implemented before

> Thompson made it clear that there were certain aspects of the file system on the Multics project that he would have liked to see happen, but which were never implemented. A major example is "treating files and devices the same... having the same read calls." This meant that terminals would input and output data in the same format that mainframes did, leveling the playing field between users on different computers.

Pipes

> The idea of standard input and output for devices eventually found its way into Unix as pipes. Pipes enabled users and programmers to send one function's output into another function by simply placing a vertical line, a &#124; between the two functions.

Being free and selfish and an actual user of the product

> This concept of building tools for one's own benefit, and adapting them to fit the needs of the group also stood out in Thompson's interview, as he explained his motivations for working on Unix. "I was more interested in myself. Just selfish notions of trying to get a environment to work in."

Even vague descriptions may forge a "revolution"

> The basic construction of the compiler, of the co-generator for the compiler, was based on an idea that I heard about from someone at the Labs at Indian Hill — I never actually did find and read the thesis, but I had the ideas in it explained to me so that the co-generator for NB was... based on this Ph.D. thesis.

More about pipes

> Most of the programs up until that time couldn't take standard input, because there wasn't the real need. They had file arguments. grep had a file argument, cat had a file argument. Thompson saw that that wasn't going to fit into this scheme of things, and he went in and changed all those programs in the same night. I don't know how. In the next morning we had this orgy of 'one-liners.' Everybody had one-liner. 'Look at this, look at that.'

grep

> One afternoon I asked Ken Thompson if he could lift the regular expression recognizer out of the editor and make a one-pass program to do it. He said yes. The next morning I found a note in my mail announcing a program named grep.

Little languages

> According to the broad definition given by Kernighan, software tools such as eqn, tbl, and make can be considered little languages. Scripting languages are also little languages because they simplify tasks that would otherwise become complex under a full-scale language such as C.

> One such scripting language, awk, was developed by Aho, Peter Weinberger, and Kernighan to be used for "simple one or two-line programs to do some filtering as part of a larger pipeline."5 The modern language perl, a prominent scripting language used on the World Wide Web, is a descendant of awk. Kernighan explains the origins of awk:

Portability (Also bringing up higher level language C and ditching assembler) also assumes it should run on less powerfull hardware

> Unix came into many CS departments largely because it was the only powerful interactive system that could run on the sort of hardware (PDP-11s) that universities could afford in the mid '70s. In addition, Unix itself was also very inexpensive. Since source code was provided, it was a system that could be shaped to the requirements of a particular installation. It was written in a language considerably more attractive than assembly, and it was small enough to be studied and understood by individuals. (John Stoneback, "The Collegiate Community," Unix Review, October 1985, p. 27.)

