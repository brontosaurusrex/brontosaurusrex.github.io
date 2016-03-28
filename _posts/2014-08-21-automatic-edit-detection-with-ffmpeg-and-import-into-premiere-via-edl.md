---
id: 3403
title: Automatic edit detection with FFmpeg and import into Premiere via EDL
date: 2014-08-21T20:04:44+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3403
permalink: /2014/08/automatic-edit-detection-with-ffmpeg-and-import-into-premiere-via-edl/
categories:
  - Uncategorized
---
<http://www.danielbachler.de/Automatic-scene-detect-via-ffmpeg-and-create-edl>

> Download ffmpeg from their website. Either put the bin directory in your path or if you don&#8217;t know how to do that then put ffprobe.exe into the directory where your movie is.
      
> Open a command line and go to the folder where the movie file is (start->cmd.exe on windows)
> 
> Run this command and replace MOVIEFILENAME with the name of your movie file. It shouldn&#8217;t contain any spaces. Be sure to copy the command exactly as stated here:
      
> ffprobe -show_frames -of compact=p=0 -f lavfi &#8220;movie=MOVIEFILENAME,select=gt(scene\,.4)&#8221; > MOVIEFILENAME.csv
> 
> This will take a while and output a bit of status information. The &#8220;.4&#8221; is the scene detection level between 0.0 and 1.0, lower numbers create more edits, higher numbers create less edits. 0.4 should be a good default.
      
> Download EDLGenerator.exe and run it, again from the command line, like so:
      
> EDLGenerator.exe MOVIENAME.csv FRAMERATE MOVIENAME MOVIENAME.edl
      
> The first file is the csv file you generated earlier, FRAMERATE is the framerate of the movie (needed for dropframe timecode corrections when appropriate), the second MOVIENAME is the source filename that should be written into the EDL file (might help with some NLEs to make linking easier) and the last is the name of the edl file to generate
      
> Import the edl file into your NLE (In premiere in File->Import)
      
> Link the media (in Premiere CS6 you can select all clips in the bin and choose link to media and just have to select the source file once even though premiere creates one source item for each edit)
      
> Voilla, you are done!

<http://forum.doom9.org/showthread.php?p=1691031#post1691031>