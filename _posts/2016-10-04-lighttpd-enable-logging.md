---
published: true
layout: post
date: '2016-10-04 10:07 +0200'
title: lighttpd enable logging
---
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->
<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   id="svg2"
   sodipodi:version="0.32"
   inkscape:version="0.91 r13725"
   width="249"
   height="239"
   version="1.0"
   sodipodi:docname="Lighttpd_logo.svg"
   inkscape:output_extension="org.inkscape.output.svg.inkscape"
   sodipodi:modified="true">
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <defs
     id="defs5" />
  <sodipodi:namedview
     inkscape:window-height="1114"
     inkscape:window-width="1590"
     inkscape:pageshadow="2"
     inkscape:pageopacity="0.0"
     guidetolerance="10.0"
     gridtolerance="10.0"
     objecttolerance="10.0"
     borderopacity="1.0"
     bordercolor="#666666"
     pagecolor="#ffffff"
     id="base"
     inkscape:zoom="2"
     inkscape:cx="137.15117"
     inkscape:cy="59.962181"
     inkscape:window-x="0"
     inkscape:window-y="46"
     inkscape:current-layer="svg2"
     showgrid="false"
     inkscape:window-maximized="0" />
  <path
     style="fill:#d9e2e8;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:0.15686275"
     d="M 236.16,23.675976 117.25384,207.40944 59.43634,168.63675 236.16,23.675976 Z"
     id="path5107"
     sodipodi:nodetypes="cccc"
     inkscape:connector-curvature="0" />
  <path
     style="fill:#336682;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:0.15686275"
     d="m 54.810074,192.58587 17.197809,-15.58889 -12.528257,-8.35017 -4.669552,23.93906 z"
     id="path4136"
     sodipodi:nodetypes="cccc"
     inkscape:connector-curvature="0" />
  <path
     style="fill:#869aab;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:0.15686275"
     d="M 236.2152,23.627034 41.981126,155.4769 54.795179,192.57022 59.516147,168.62817 236.2152,23.627034 Z"
     id="path3165"
     inkscape:connector-curvature="0" />
  <path
     style="fill:#d9e2e8;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:0.15686275"
     d="M 236.19599,23.652475 13.318113,130.52321 41.981126,155.44819 236.19599,23.652475 Z"
     id="path2192"
     sodipodi:nodetypes="cccc"
     inkscape:connector-curvature="0" />
</svg>

    sudo lighttpd-enable-mod accesslog
    
and by default it should show up in /var/log/lighttpd/access.log

Other interesting mods are dir-listing and userdir (see /etc/lighttpd/conf-*)
