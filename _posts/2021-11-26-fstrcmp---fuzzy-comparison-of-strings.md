---
published: true
layout: post
date: '2021-11-25 17:32'
title: fstrcmp - fuzzy comparison of strings
tags: linux cli bash 
---
> The fstrcmp command is used to make fuzzy comparisons between strings. The “edit distance” between the strings is printed, with 0.0 meaning the strings are utterly un-alike, and 1.0 meaning the strings are identical.

    fstrcmp a b
    0.0000

    fstrcmp ab b
    0.6667

    fstrcmp ab bb
    0.5000

    fstrcmp abb bbb
    0.6667

    var1="Yes i know it for sure"
    var2="Yes i know is for real"

    fstrcmp "$var1" "$var2"
    0.8636

    var2="for real"

    fstrcmp "$var1" "$var2"
    0.4000

    fstrcmp "this is a test" "this is a test!"
    0.9655

    fstrcmp "fuzzy wuzzy was a bear" "wuzzy fuzzy was a bear"
    0.9091

    fstrcmp "Four score and seven years ago" "Four_score_and_seven_years_ago"
    0.8333

    fstrcmp "Four score and seven years ago" "Four_Score_And_Seven_Years_Ago"
    0.6667

    a="Four score and seven years ago"
    b="Four_Score_And_Seven_Years_Ago"

    fstrcmp "${a,,}" "${b,,}" # both to lowercase
    0.8333

    fstrcmp "a b c" "c b a"
    0.6000

The utility is in Debian repos.
