---
published: true
layout: post
date: '2020-04-14 09:09'
title: Windows Terminal as Total Commander button bar icon
tags: 
---
	Command: wt
	Parameters: -d %P

Where -d is part of terminal command and %P is total commander thing.

From help

	Here you can specify command line parameters.
	Special parameters:
	? as the first parameter causes a Dialog box to be displayed before starting the program, containing the following parameters. You can change the parameters before starting the program. You can even prevent the program's execution.
	%P causes the source path to be inserted into the command line, including a backslash (\) at the end.
	%N places the filename under the cursor into the command line. 
	%T inserts the current target path. Especially useful for packers.
	%M places the current filename in the target directory into the command line.
	%O places the current filename without extension into the command line. 
	%E places the current extension (without leading period) into the command line.
	%S insert the names of all selected files into the command line. Names containing spaces will be surrounded by double quotes. Please note the maximum command line length of 32767 characters.
	%S10 insert the names of the first 10 selected files (max.) into the command line. Allows to limit the number of file names passed to the program. You can use any other number.
	%R like %S, but with selected names from the target panel
	Notes: %N and %M insert the long name, while %n and %m insert the DOS alias name (8.3). %P and %T insert the long path name, and %p and %t the short path name. (Same for %o, %e and %s)
	By putting %P, %p, %T or %t directly in front of %S or %s, the path name is inserted with the file name for each file. Example: %P%S inserts the long path and file name for all selected files.
	%% inserts the percent-sign (just one!).
	%L, %l, %F, %f, %D, %d, %WL, %WF, %UL, %UF create a list file in the TEMP directory with the names of the selected files and directories, and appends the name of the list file to the command line. The list is deleted automatically when the called program quits. Only one list per command is supported. 10 types of list files can be created:
	%L Long file names including the complete path, e.g. c:\Program Files\Long name.exe
	%l (lowercase L) Short file names including the complete path, e.g. C:\PROGRA~1\LONGNA~1.EXE
	%F Long file names without path, e.g. Long name.exe
	%f Short file names without path, e.g. LONGNA~1.EXE
	%D Short file names including the complete path, but using the DOS character set for accents.
	%d Short file names without path, but using the DOS character set for accents.
	%UL, %UF like %L and %F, but with a UTF-8 Unicode list file (with byte order marker)
	%WL, %WF like %L and %F, but with a UTF-16 Unicode list file (with byte order marker)
	%X Interprets the following parameters after this parameter as left/right instead of source/target:
  	%P, %p (left path), %T, %t (right path), %N, %n (left name), %M, %m (right name),
  	%S, %s (left selected), %R, %r (right selected)
  	Example: %X%P %T  sends left and right path to e.g. an external sync tool
	%x Interprets the following parameters after this parameter again as source/target
  	Example: %X%P %x%P sends left and source path to the called program
	%Z anywhere in the parameters: Allow to pass archives as path to programs for %P or %T when inside an archive
  	Example: %Z%P passes name of archive to external tool when TC shows contents of an archive
