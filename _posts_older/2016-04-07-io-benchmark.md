---
published: true
layout: post
date: "2016-04-07 21:12 +0200"
title: io benchmark
---

[https://www.howtoforge.com/how-to-benchmark-your-system-cpu-file-io-mysql-with-sysbench](https://www.howtoforge.com/how-to-benchmark-your-system-cpu-file-io-mysql-with-sysbench)

Should work natively with OS X as well (with some help from brew). 190 gigs seems to be a bit fat, how about 10 gigs?

Host OS (OSX)

    Read 611.41Mb  Written 407.59Mb  Total transferred 1019Mb  (3.3966Mb/sec)
    
Guest OS (wheezy)

    Read 779.23Mb  Written 519.48Mb  Total transferred 1.2683Gb  (4.3289Mb/sec)
    
Which would mean that guest OS is faster than host OS, and that does not make any sense and my observations are completely different.