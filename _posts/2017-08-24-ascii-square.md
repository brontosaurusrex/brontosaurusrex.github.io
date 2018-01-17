---
published: true
layout: post
date: '2017-08-24 17:52 +0200'
title: ascii squares
tags: misc cli bash
---
■□

Should look like this with Cuprum font
<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="205.72058"
   height="92.189163"
   viewBox="0 0 54.430237 24.391716"
   version="1.1"
   id="svg8"
   inkscape:version="0.92.1 r15371"
   sodipodi:docname="boxessvg.svg">
  <defs
     id="defs2" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="1.4"
     inkscape:cx="173.86715"
     inkscape:cy="-165.13705"
     inkscape:document-units="mm"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:showpageshadow="false"
     inkscape:pagecheckerboard="true"
     fit-margin-top="0"
     fit-margin-left="0"
     fit-margin-right="0"
     fit-margin-bottom="0"
     units="px"
     inkscape:window-width="1908"
     inkscape:window-height="1088"
     inkscape:window-x="6"
     inkscape:window-y="46"
     inkscape:window-maximized="1" />
  <metadata
     id="metadata5">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(-9.1298715,-12.578731)">
    <text
       xml:space="preserve"
       style="font-style:normal;font-weight:normal;font-size:28.40278625px;line-height:17.7517395px;font-family:sans-serif;letter-spacing:0px;word-spacing:0px;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.71006966px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
       x="9.5024157"
       y="32.152657"
       id="text3682"><tspan
         sodipodi:role="line"
         id="tspan3680"
         x="9.5024157"
         y="32.152657"
         style="stroke-width:0.71006966px">■□</tspan></text>
  </g>
</svg>

See '[desktop pager with text](https://gitlab.com/o9000/tint2/blob/master/doc/tint2.md#executor)' example.

## xprop

    # current desktop
    xprop -root | grep "CURRENT_DESKTOP(CARDINAL)

    # how many are there
    xprop -root | grep "NUMBER_OF_DESKTOPS(CARDINAL)"
    
*-spy* Examine window properties forever, looking for property change events.

## continuous desktop spy

    #!/bin/bash

    # spyDesk 

    # continuous desktop spy, to be used in tint2 
    # executor scripts with 'execp_continuous = 1'

    count=0

    (xprop -root -spy _NET_CURRENT_DESKTOP)  | 
    while read
    do

        ((count+=1))

        read -r _ _ desk <<< $(xprop -root _NET_CURRENT_DESKTOP) && ((desk+=1))
        read -r _ _ num <<< $(xprop -root _NET_NUMBER_OF_DESKTOPS)
        
        >&2 echo "($count) desktop $desk / $num"
        
        # some real code here

    done
    
[Full example.](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/deskSpy)

## and similar resolution-change snifer

    #!/bin/bash

    # spyRes

    count=0

    (xprop -root -spy _NET_DESKTOP_GEOMETRY)  | 
    while read
    do
        ((count+=1))
        >&2 echo "($count) resolution changed"
        
        # however this fires a bit to often, so some sort of logic to limit that should be here.
        
    done
