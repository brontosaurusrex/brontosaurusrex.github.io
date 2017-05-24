---
published: true
layout: post
date: '2017-05-24 11:48 +0200'
title: amazon aws glacier
---
    # info
    aws glacier describe-vault --vault-name shramba --account-id -

    # upload something
    aws glacier upload-archive --account-id - --vault-name shramba --body images/siteImages.tar.gz
