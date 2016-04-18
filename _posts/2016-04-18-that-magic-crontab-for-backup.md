---
published: true
layout: post
date: "2016-04-18 10:57 +0200"
title: That magic crontab for backup
---
    # crontab to rsync my working dir with another disk, everyday at midnight
    00 00 * * * /Users/b/bin/rsyncIntRaidToNapovedniki2.command >/tmp/stdout.log 2>/tmp/stderr.log

and the script rsyncIntRaidToNapovedniki2.command looks like

    #!/bin/bash
    rsync -av --stats --progress --exclude 'z800*' --exclude 'Adobe Premiere*' --exclude '*.cfa' --exclude '*.pek' 	    --exclude '*.qtindex' --exclude '*.hphys' --exclude '*.DS_store' /Volumes/int_raid/brontosaurusrex_small /Volumes/NAPOVEDNIKI-2/somefolder/

    # enejblaj tele spodi, ko se dejansko kaj spremeni;
    #rsync -av --stats --progress /Volumes/int_raid/backups_osx_mac_lion_snow /Volumes/NAPOVEDNIKI-2/somefolder/
    #rsync -av --stats --progress /Volumes/int_raid/NovaPodoba2014 /Volumes/NAPOVEDNIKI-2/somefolder/
    #rsync -av --stats --progress /Volumes/int_raid/instalacije /Volumes/NAPOVEDNIKI-2/somefolder/