---
published: true
layout: post
date: '2016-08-03 16:35 +0200'
title: 'Virtualbox, move vms to another disk'
---
> 1. Shut down VirtualBox, back up your <userdoc\.VirtualBox\VirtualBox.xml file.
> 2. Find your existing "Virtualbox VMs" folder, and copy (not move) the whole folder with contents to > your new drive E:
> 3. Run VirtualBox, then for each VM in turn :-
> 3.1 Right click the VM name and select "Remove" from the popup menu. Answer no to the "physically > delete files?" question.
> 3.2 Select the Machine|Add.. menu item, navigate to the VMs new location on drive E:, and select the .vbox file.
> 3.3. Repeat for any remaining VMs.
> 4. In File/Preferences, set the default machine path to "E:\VirtualBox VMs"
> 5. Test each of the VMs. Only after you are sure they all work, delete the old VM containing folder, i.e. delete "C:\VirtualBox VMs".

from [https://forums.virtualbox.org/viewtopic.php?f=1&t=48258#p219275](https://forums.virtualbox.org/viewtopic.php?f=1&t=48258#p219275)
