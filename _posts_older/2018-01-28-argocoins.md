---
published: true
layout: post
date: '2018-01-28 13:58 +0100'
title: argocoins
tags:
  - linux
  - crypto
---
[https://bitcointalk.org/index.php?topic=2834315.0](https://bitcointalk.org/index.php?topic=2834315.0)

## wallet

git clone https://github.com/argocoins/argo/  
[https://github.com/argocoins/argo/blob/master/doc/build-unix.md](https://github.com/argocoins/argo/blob/master/doc/build-unix.md)  
(build berkeley manually)  
[https://github.com/argocoins/argo/blob/master/doc/init.md](https://github.com/argocoins/argo/blob/master/doc/init.md) < config  

    sudo apt install libdb-dev
    sudo apt install libev-libevent-dev
    sudo apt install libevent-core-2.0-5
    sudo apt install libevent-dev
    sudo apt install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
    sudo apt install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
    # other qt deps, see that ^ build-unix.md

## gui

    ~/source/argo-wallet/argo/src/qt
