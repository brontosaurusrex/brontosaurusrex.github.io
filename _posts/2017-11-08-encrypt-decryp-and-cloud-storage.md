---
published: true
layout: post
date: '2017-11-08 11:30 +0100'
title: encrypt/decryp and cloud storage
tags: cli linux
---
[http://distrowatch.com/weekly.php?issue=20110516#tips](http://distrowatch.com/weekly.php?issue=20110516#tips)

Quoting

    # enc
    openssl enc -e -aes256 -in to-do-list.txt -out encoded-list.txt
    # dec
    openssl enc -aes256 -d -in encoded-list.txt -out the-to-do-list.txt
    
Seems dumb, but should be occasionally useful. Note: it will kill any rsync/diff-only possibilities that specific cloud service may offer.
    
