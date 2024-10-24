---
published: true
layout: post
date: '2024-10-24 16:54'
title: Access time mistery
tags: linux cli bash 
---
    mount | grep ' / '

shall show the mount options, it prints this for my Debian WSL2 install:

    /dev/sdc on / type ext4 (rw,relatime,discard,errors=remount-ro,data=ordered)

where relatime is a faster but less accurate version of atime..., WSL1 mounts may return __noatime__, where atime should be equal to mtime (not really), but it will still be modified with touch command. By default touch will update mtime and atime.

    find . -maxdepth 1  -type f -amin -5

may return list of files accessed in last 5 minutes from current dir only.

    ls -luathr

will return dir listing sorted by access time, newer last.

    # simulate what would be deleted
    find ./ -maxdepth 1 -type f -amin +60 -exec echo Would delete {} +
    # carefull here, actual DELETION
    # find . -maxdepth 1  -type f -amin +60 -delete

will delete files older that an hour from current dir.
