---
published: true
layout: post
date: "2016-03-09 10:23 +0100"
title: Arch and guest additions
---

	sudo pacman -S linux-headers dkms
    
insert that "guest additions" "cd", copy files to user tmp, then

	sudo ./VBoxLinux (tab)
    
If compton (AUR) is behaving, git pull, rebuild with [makepkg](https://wiki.archlinux.org/index.php/Arch_User_Repository)

	makepkg -sri
    
reboot.
