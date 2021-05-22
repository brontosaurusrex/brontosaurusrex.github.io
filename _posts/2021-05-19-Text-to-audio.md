---
published: true
layout: post
date: '2021-05-19 14:03'
title: Text to audio
tags: audio 
---

    flite -voice slt -t "Chuck Norris does not sleep. He waits." -o /dev/stdout | opusenc - - > chuck.opus

[Story](https://forums.bunsenlabs.org/viewtopic.php?pid=114642#p114642).
[youread script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/youread).
