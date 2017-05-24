---
published: true
layout: post
date: '2017-05-24 11:48 +0200'
title: amazon aws glacier
---
First generate a user and group. And the group has certain privilegies (Quite a fun to figure out what to clicky there, since each group has a limit of 10 'permission entries'.

And generate a new glacier instance...

    # info
    aws glacier describe-vault --vault-name shramba --account-id -

    # upload something
    aws glacier upload-archive --account-id - --vault-name shramba --body images/siteImages.tar.gz
    
[http://docs.amazonaws.cn/cli/latest/reference/glacier/upload-archive.html](http://docs.amazonaws.cn/cli/latest/reference/glacier/upload-archive.html)

![amazon-cloud.png]({{site.baseurl}}/media/amazon-cloud.png)

