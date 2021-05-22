---
published: true
layout: post
date: '2021-05-19 14:03'
title: Text to audio
tags: audio 
---

    flite -voice slt -t "Chuck Norris does not sleep. He waits." -o /dev/stdout | opusenc - - > chuck.opus

[Story](https://forums.bunsenlabs.org/viewtopic.php?pid=114642#p114642).
[Youread script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/youread).

Note: Much better text to speech syntesis could be done with [commercial google cloud account](https://cloud.google.com/text-to-speech/docs/quickstart-protocol), _using an API powered by Google’s AI technologies. Built based on DeepMind’s speech synthesis expertise, the API delivers voices that are near human quality._
