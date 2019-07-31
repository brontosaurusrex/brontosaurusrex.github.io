---
title: General
layout: bucentaur
---

## Install Debian Buster

Install base system, skip creating root user and sudo should be the automagic default. When asked for additional stuff only select standard system utilities.

Boot into cli, install git, sed and vim.

    sudo apt install git apt-transport-https sed vim
    git config --global core.editor "vim" # optional
