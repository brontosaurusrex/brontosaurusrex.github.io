---
published: true
layout: post
date: '2019-04-29 22:17'
title: Pi testtemp
tags: linux
---
A little stress/temp test.
[https://github.com/brontosaurusrex/stretchbang/tree/master/.experiments/pi](https://github.com/brontosaurusrex/stretchbang/tree/master/.experiments/pi)

Results could look like

    testtemp

    52.0                                                                                                                  
    run 1                                                                                                                 
    stress: info: [28239] dispatching hogs: 8 cpu, 0 io, 0 vm, 0 hdd                                                      
    stress: info: [28239] successful run completed in 10s                                                                 
    frequency(45)=600000000                                                                                               
    54.7                                                                                                                  
    run 2                                                                                                                 
    stress: info: [28253] dispatching hogs: 8 cpu, 0 io, 0 vm, 0 hdd                                                      
    stress: info: [28253] successful run completed in 10s                                                                 
    frequency(45)=600000000                                                                                               
    55.8                                                                                                                  
    run 3                                                                                                                 
    stress: info: [28267] dispatching hogs: 8 cpu, 0 io, 0 vm, 0 hdd                                                      
    stress: info: [28267] successful run completed in 10s                                                                 
    frequency(45)=600000000                                                                                               
    56.3                                                                                                                  
    run 4                                                                                                                 
    stress: info: [28281] dispatching hogs: 8 cpu, 0 io, 0 vm, 0 hdd                                                      
    stress: info: [28281] successful run completed in 10s                                                                 
    frequency(45)=600000000                                                                                               
    56.3                                                                                                                  
    run 5                                                                                                                 
    stress: info: [28307] dispatching hogs: 8 cpu, 0 io, 0 vm, 0 hdd                                                      
    stress: info: [28307] successful run completed in 10s                                                                 
    frequency(45)=600000000                                                                                               
    56.9                                                           
    ...
