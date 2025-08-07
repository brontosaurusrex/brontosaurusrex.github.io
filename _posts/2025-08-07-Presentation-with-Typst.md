---
published: true
layout: post
date: '2025-08-07 17:46'
title: Presentation with Typst
tags: web misc 
---
Produce a simple presentation template with say 3-5 different layouts that can be chosen like:
 - Full page text
 - Left text, right image
 - Right text, left image

Main idea: Do Not use any online services, produce everything offline.

## Install typst
<https://github.com/typst/typst>  
Cargo install or whatever floats your boat. 

## Get test document to build

    cd documents
    code test.typ
    # in new terminal pane
    typst watch test.typ

Should rebuild any changes detected into test.pdf

Testing so far:

    #set page(
      paper: "presentation-16-9",
      margin: (x: 2cm, y: 2cm),
      fill: rgb("#2e3c45ff"),
      header: align(center)[
      _Presentation_
      ],
      numbering: "1/1",

    )
    #set text(
      font: "Roboto",
      size: 13pt,
      fill: rgb("#96b0bfff"),
    )
    #set par(
      justify: true,
      leading: 0.52em,
    )
    #set heading(
      numbering: "1.",
    )

    #align(center, text(27pt)[
      *A fluid dynamic model
      for glacier flow*
    ])

    #grid(
      columns: (1fr, 1fr),
      align(center)[
        Therese Tungsten \
        Artos Institute \
        #link("mailto:tung@artos.edu")
      ],
      align(center)[
        Dr. John Doe \
        Artos Institute \
        #link("mailto:doe@artos.edu")
      ]
    )
    #align(center)[
      #set par(justify: false)
      *Abstract* \
      #lorem(80)
    ]

    = Introduction
    #lorem(180)

    #align(center + top)[
      #image("images/bronto.svg", width: 50%)

      _#lorem(5)_
    ]

Will produce something like:  
![vscode with some typst extension](https://images2.imgbox.com/06/65/Ehc02qmQ_o.png)

Or in pdf form: [typstTest.pdf](/media/typstTest.pdf)

Docs: <https://typst.app/docs/tutorial/writing-in-typst/>

## Install vscode extension
Tinymist Typst, to preview your document in the code editor.

## Notes
This markdown gets complicated really fast.
