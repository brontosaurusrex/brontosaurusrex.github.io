---
published: true
layout: post
date: '2023-09-05 08:35'
title: Total commander - Add/Change comments for multiple files
tags: misc 
---
<https://www.ghisler.ch/board/viewtopic.php?t=30708>

> 1. create button with cm_SetAttrib command
> 2. select all files
> 3. click on created button
> 4. select Check plugin attributes
> 5. click on More attributes
> 6. choose:
>
> Plugin: tc
> Property: comment
> Value: write your comment here
>
> 7. click OK

My button would be:

	Command: cm_SetAttrib
	Icon file: %COMMANDER_PATH%\..\ico\papirus\commix.ico

Comments are stored in hidden text file named 'descript.ion' and will persist when file is copied (with total commander i guess).

This is what chatGPT has to say about descript.ion:

A "descript.ion" file is typically a plain text file used to store descriptions or metadata for files in a specific directory or folder. These description files were commonly used in older operating systems like MS-DOS and some early versions of Windows, such as Windows 3.x and Windows 95. The purpose of these files was to provide additional information about the files in a directory, such as a brief description, author, or any other relevant details.

Each line in a "descript.ion" file corresponds to a file in the same directory, and the line contains the filename along with its associated description or metadata. For example:

    file1.txt This is the first file.
    file2.jpg A picture of a beach.
    file3.exe Important application.

In this example, "descript.ion" is the name of the description file, and it provides descriptions for three different files in the directory.

It's important to note that the use of "descript.ion" files has largely become obsolete in modern operating systems and file management systems. More advanced metadata and file attributes are available in contemporary file systems, making it easier to store and retrieve information about files without the need for separate description files.
