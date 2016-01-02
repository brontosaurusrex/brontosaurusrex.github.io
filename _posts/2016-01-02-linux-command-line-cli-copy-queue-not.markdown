---
published: true
title: linux command line (cli) copy queue … not
layout: post
---
parallel

    cp -r source1 dest &
    cp -r source2 dest &

    jobs # to list bg stuff

    kill %1 # to kill job number 1

It gives some control and it is definitely better than clunky mc.

One could do a combo of serial and parallel as well:

    (cp a b; cp d b) &
    cp e b &

some good reading
<http://mywiki.wooledge.org/ProcessManagement>

p.s. In case of (cp a b; cp c d) & it appears that one could not get the PIDS of this two, since we are not direct parent, but rather parent of the parent … (unless perhaps writing pids to file < to test)
