---
published: true
layout: post
date: '2024-05-31 11:10'
title: Exit if array is empty oneliner
tags: bash 
---
    (( ${#array[@]} )) || { echo "array is empty"; exit 1; }

where `(( ${#array[@]} ))` checks the array length.
