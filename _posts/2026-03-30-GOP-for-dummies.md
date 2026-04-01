---
published: true
layout: post
date: '2026-03-30 18:30'
title: GOP for dummies
tags: video 
---
GOP = Group of Pictures. Quote from <https://en.wikipedia.org/wiki/Group_of_pictures>  
> Generally, the more I frames the video stream has, the more editable it is. However, having more I frames substantially increases bit rate needed to code the video.

Chatgpt constructed bash script that echoes some I,P,B data in video stream could look like

    #!/usr/bin/env bash
    
    # GOP 
    # usage: gop file.mp4
    
    input="$1"
    
    ffprobe -v error \
    -select_streams v:0 \
    -show_frames \
    -show_entries frame=pict_type,pkt_size \
    -of csv=p=0 "$input" |
    awk -F',' '
    {
        type=""
        size=""
       
        for (i=1; i<=NF; i++) {
            if ($i ~ /^[IPB]$/) type=$i
            if ($i ~ /^[0-9]+$/) size=$i
        }
        
        if (!type && size) type="I"
        
        if (type && size) {
            if (type=="I") sym="I────"
            else if (type=="P") sym="  P  "
            else sym="    B"
            
            printf "%6d  %s  %8d bytes\n", NR, sym, size
        }
    }
    '

Or a [version of this script](https://raw.githubusercontent.com/brontosaurusrex/singularity/refs/heads/master/bin/gop_with_graph) that adds bitrate distribution ascii art. Ascii bitrate is fit to fill normalized.

Typical cineform mov, all frames are I frames (ffprobe will not return frame type, so script assumes I type):

      273  I────    948632 bytes  ####################
      274  I────    992096 bytes  #####################
      275  I────   1122612 bytes  ########################
      276  I────   1100060 bytes  ########################
      277  I────   1022352 bytes  ######################
      278  I────    986004 bytes  #####################
      279  I────    965564 bytes  #####################
      280  I────   1077204 bytes  #######################
      281  I────   1076352 bytes  #######################
      282  I────    950700 bytes  ####################
      283  I────    975628 bytes  #####################
      284  I────    965556 bytes  #####################
      285  I────   1083288 bytes  #######################
      286  I────   1135564 bytes  #########################
      287  I────   1041004 bytes  ######################
      288  I────   1002624 bytes  ######################
      289  I────   1004092 bytes  ######################
      290  I────   1119344 bytes  ########################
      291  I────   1083284 bytes  #######################
      292  I────   1004480 bytes  ######################
      293  I────    914176 bytes  ####################
      294  I────   1304372 bytes  ############################
      295  I────   1377500 bytes  ##############################
      296  I────   1250604 bytes  ###########################
      297  I────   1313788 bytes  #############################
      298  I────   1377376 bytes  ##############################
      299  I────   1319956 bytes  #############################
      300  I────   1391172 bytes  ##############################
      301  I────   1433520 bytes  ###############################
      302  I────   1386680 bytes  ##############################

Typical ultrafast x.264 (screen recording), doesn't bother with B frames

      240    P        5460 bytes  
      241    P        6516 bytes  
      242    P      384257 bytes  #############
      243    P      362919 bytes  ############
      244    P      326074 bytes  ###########
      245    P      263442 bytes  #########
      246    P       87488 bytes  ###
      247    P       65892 bytes  ##
      248    P        9293 bytes  
      249    P        5598 bytes  
      250    P        7197 bytes  
      251  I────   1141412 bytes  #######################################
      252    P        6487 bytes  
      253    P        5613 bytes  
      254    P        5381 bytes  
      255    P        7852 bytes  
      256    P        7703 bytes  
      257    P        6832 bytes  
      258    P        5816 bytes  
      259    P        6258 bytes  
      260    P        8294 bytes  
      261    P        9133 bytes  
      262    P        7064 bytes  
      263    P        5916 bytes  
      264    P        6739 bytes  
      265    P        7497 bytes  
      266    P       11224 bytes  
      267    P        8326 bytes  
      268    P        6563 bytes  
      269    P        5772 bytes  

Veryslow x.264 preset

      377  I────    315818 bytes  ######################
      378      B     47189 bytes  ###
      379      B     70166 bytes  #####
      380      B     42643 bytes  ###
      381    P      173192 bytes  ############
      382      B     44142 bytes  ###
      383      B     68863 bytes  ####
      384      B     38564 bytes  ##
      385    P      161360 bytes  ###########
      386      B     41360 bytes  ##
      387      B     74461 bytes  #####
      388      B     41257 bytes  ##
      389    P      156506 bytes  ###########
      390      B     38385 bytes  ##
      391      B     72214 bytes  #####
      392      B     44863 bytes  ###
      393    P      164925 bytes  ###########
      394      B     37340 bytes  ##
      395      B     70971 bytes  #####
      396      B     42263 bytes  ###
      397    P      148882 bytes  ##########
      398      B     46404 bytes  ###
      399      B     79438 bytes  #####
      400      B     47978 bytes  ###
      401    P      141652 bytes  ##########
      402      B     45448 bytes  ###
      403      B     74540 bytes  #####
      404      B     49253 bytes  ###
      405    P      121988 bytes  ########
      406    P       66809 bytes  ####
      407  I────    558483 bytes  ########################################

50 mbit XDCAM mpeg2 thing, GOP is 12 frames long, encoding type is CBR

      139    P      621621 bytes  #####################################
      140      B    122509 bytes  #######
      141      B    240468 bytes  ##############
      142    P      282998 bytes  #################
      143      B    163902 bytes  #########
      144      B    307325 bytes  ##################
      145  I────    371411 bytes  ######################
      146      B    154834 bytes  #########
      147      B    134406 bytes  ########
      148    P      214273 bytes  ############
      149      B     82567 bytes  ####
      150      B    169461 bytes  ##########
      151    P      534457 bytes  ################################
      152      B     51703 bytes  ###
      153      B    112532 bytes  ######
      154    P      515012 bytes  ###############################
      155      B    116230 bytes  ######
      156      B    240436 bytes  ##############
      157  I────    460713 bytes  ###########################
      158      B    172820 bytes  ##########
      159      B    176916 bytes  ##########
      160    P      317669 bytes  ###################
      161      B     76998 bytes  ####
      162      B    188748 bytes  ###########
      163    P      537142 bytes  ################################
      164      B     63332 bytes  ###
      165      B    139571 bytes  ########
      166    P      544844 bytes  ################################
      167      B     89880 bytes  #####
      168      B    258842 bytes  ###############
      169  I────    496320 bytes  #############################

Smart conclusion here.
