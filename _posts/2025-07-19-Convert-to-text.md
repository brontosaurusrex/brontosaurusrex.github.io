---
published: true
layout: post
date: '2025-07-19 18:13'
title: Convert to text
tags: cli bash 
---
## pdf

    # package: poppler-utils
    pdftotext file.pdf

## epub

    # Doesn't need X
    # https://github.com/kevinboone/epub2txt2
    epub2txt -a -n file.epub > file.txt

or much slower (and should also work for mobi, pdf, azw3, docx ...):

    # Needs X
    # package: calibre
    ebook-convert file.epub file2.txt


## html

    # package: html2text
    html2text < file.htm > file.txt

or worse:

    # package: lynx (or w3m or elinks)
    lynx --dump file.htm > file.txt

or

    # package: pandoc
    pandoc -f html -t plain file.htm -o file.txt

## docx

    # package: pandoc
    pandoc -s some.docx -o some.txt

or (different output than with pandoc when tables are in game)

    # package: docx2txt
    docx2txt some.docx
