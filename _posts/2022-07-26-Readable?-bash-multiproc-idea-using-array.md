---
published: true
layout: post
date: '2022-07-26 11:45'
title: Readable? bash multiproc idea using array
tags: bash mine 
---
[multiprocIdea model](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/multiprocIdea)  
Assumes data is stored in text file, each line is new task of some sort, in the example 3 tasks will be attacked at the same time. In reality $countpad could be used as filename for temporary storage to be later merged to some output.

While loops over text file, puting results into array until some limit is met (3 in this example), when limit is reached function is called to process that array and to unset it for next subloop. When all clears, there may still be some lines (less than 3) in the array, so process those as well....
