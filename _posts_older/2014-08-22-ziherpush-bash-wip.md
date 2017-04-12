---
id: 3407
title: ziherPush bash, wip
date: 2014-08-22T16:50:17+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3407
permalink: /2014/08/ziherpush-bash-wip/
categories:
  - Uncategorized
---
<pre>#!/bin/bash

# check if both locations are mounted, exit otherwise
mount | grep "PROMOCIJA%20TV" >/dev/null 2>&1 || { echo "lokacija pre-push not mounted"; exit 1; }
mount | grep "/Volumes/PROMOCIJA" >/dev/null 2>&1 || { echo "push not mounted"; exit 1; }

# echo "both mounted"

# definiraj dve lokaciji - mape
lok1="/Volumes/PROMOCIJA/CGP_2012_ZA_PGM"
lok2="/Volumes/int_raid/NETATALK/push"

# sčekiraj če definirane lokacije obstajajo in so mape
if [ ! -d "$lok1" ]; then
  echo "$lok1 ne obstaja"
  exit 1;
fi
if [ ! -d "$lok2" ]; then
  echo "$lok2 ne obstaja"
  exit 1;
  
fi


# just echo input parameters
echo "----------------"
echo "Datoteke"
echo "----------------"
for i; do 
    echo $i 
done
echo "----------------"
echo "bom skopiral na"
echo "$lok1 in na" 
echo "$lok2"
echo "----------------"

read -p "Pritisni [enter] če se strinjaš ... (ali ctrl+c če se ne)"
    echo "----------------"


# copy using cp to hardcoded lokations
# rsync-a se ne sme uporabljati, ker dela tmp datoteke na mestu pristanka, oziroma je le to mesto 
# pristanka en zelo tup watch-folder.

while [ $# -gt 0 ]; do

	echo "kopiram $1"

	cp -v "$1" "$lok1"
	cp -v "$1" "$lok2"

    echo 
    echo "md5sumam in primerjam $1"

    # poprava
    
    osnova=$(basename "$1")

    file0=$(md5 -q "$1")    
	file1=$(md5 -q "$lok1/$osnova") 
	file2=$(md5 -q "$lok2/$osnova")


	# sčekiraj če md5sumi niso null
    if [ -z "$file0" ]
    	then
    	    echo "md5sum za $1 je prazen"
            exit 1;
    fi
    if [ -z "$file1" ]
        then
            echo "md5sum za $lok1 je prazen"
            exit 1;
    fi
    if [ -z "$file2" ]
        then
         	echo "md5sum za $lok2 je prazen"
            exit 1;
    fi

	# debug
	# echo $file0
	# echo $file1
	# echo $file2

	if [ "$file0" == "$file1" ]
	then
	    echo "$1 ok na $lok1 - $file1"
	else
	    echo "$1 NI ok na $lok1, ERROR"; say "error"; exit 1;
	fi

	if [ "$file0" == "$file2" ]
	then
	    echo "$1 ok na $lok2 - $file2"
	else
	    echo "$1 ni ok na $lok2"; say "error"; exit 1;
	fi

	shift
	echo "----------------"
done

# echo "errorlevel"
# echo $?
say "seems fine, md5 matches"

</pre>