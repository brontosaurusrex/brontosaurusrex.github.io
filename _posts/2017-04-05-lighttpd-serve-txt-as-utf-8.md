---
published: true
layout: post
date: '2017-04-05 17:08 +0200'
title: lighttpd serve .txt as utf-8
tags: linux web
---
In /etc/lighttpd/lighttpd.conf comment/disable

    #include_shell "/usr/share/lighttpd/create-mime.assign.pl"
    
and add something like

	mimetype.assign             = (
	  ".pdf"          =>      "application/pdf",
	  ".sig"          =>      "application/pgp-signature",
	  ".spl"          =>      "application/futuresplash",
	  ".class"        =>      "application/octet-stream",
	  ".ps"           =>      "application/postscript",
	  ".torrent"      =>      "application/x-bittorrent",
	  ".dvi"          =>      "application/x-dvi",
	  ".gz"           =>      "application/x-gzip",
	  ".pac"          =>      "application/x-ns-proxy-autoconfig",
	  ".swf"          =>      "application/x-shockwave-flash",
	  ".tar.gz"       =>      "application/x-tgz",
	  ".tgz"          =>      "application/x-tgz",
	  ".tar"          =>      "application/x-tar",
	  ".zip"          =>      "application/zip",
	  ".mp3"          =>      "audio/mpeg",
	  ".m3u"          =>      "audio/x-mpegurl",
	  ".wma"          =>      "audio/x-ms-wma",
	  ".wax"          =>      "audio/x-ms-wax",
	  ".ogg"          =>      "application/ogg",
	  ".wav"          =>      "audio/x-wav",
	  ".gif"          =>      "image/gif",
	  ".jpg"          =>      "image/jpeg",
	  ".jpeg"         =>      "image/jpeg",
	  ".png"          =>      "image/png",
	  ".xbm"          =>      "image/x-xbitmap",
	  ".xpm"          =>      "image/x-xpixmap",
	  ".xwd"          =>      "image/x-xwindowdump",
	  ".asc"          =>      "text/plain",
	  ".c"            =>      "text/plain",
	  ".cpp"          =>      "text/plain",
	  ".log"          =>      "text/plain",
	  ".conf"         =>      "text/plain",
	  ".spec"         =>      "text/plain",
	  ".dtd"          =>      "text/xml",
	  ".mpeg"         =>      "video/mpeg",
	  ".mpg"          =>      "video/mpeg",
	  ".mov"          =>      "video/quicktime",
	  ".qt"           =>      "video/quicktime",
	  ".avi"          =>      "video/x-msvideo",
	  ".asf"          =>      "video/x-ms-asf",
	  ".asx"          =>      "video/x-ms-asf",
	  ".wmv"          =>      "video/x-ms-wmv",
	  ".bz2"          =>      "application/x-bzip",
	  ".tbz"          =>      "application/x-bzip-compressed-tar",
	  ".tar.bz2"      =>      "application/x-bzip-compressed-tar",
	  ".odt"          =>      "application/vnd.oasis.opendocument.text", 
	  ".ods"          =>      "application/vnd.oasis.opendocument.spreadsheet", 
	  ".odp"          =>      "application/vnd.oasis.opendocument.presentation", 
	  ".odg"          =>      "application/vnd.oasis.opendocument.graphics", 
	  ".odc"          =>      "application/vnd.oasis.opendocument.chart", 
	  ".odf"          =>      "application/vnd.oasis.opendocument.formula", 
	  ".odi"          =>      "application/vnd.oasis.opendocument.image", 
	  ".odm"          =>      "application/vnd.oasis.opendocument.text-master", 
	  ".ott"          =>      "application/vnd.oasis.opendocument.text-template",
	  ".ots"          =>      "application/vnd.oasis.opendocument.spreadsheet-template",
	  ".otp"          =>      "application/vnd.oasis.opendocument.presentation-template",
	  ".otg"          =>      "application/vnd.oasis.opendocument.graphics-template",
	  ".otc"          =>      "application/vnd.oasis.opendocument.chart-template",
	  ".otf"          =>      "application/vnd.oasis.opendocument.formula-template",
	  ".oti"          =>      "application/vnd.oasis.opendocument.image-template",
	  ".oth"          =>      "application/vnd.oasis.opendocument.text-web", 
	# mine
	  ".css"          =>      "text/css; charset=utf-8",
	  ".html"         =>      "text/html; charset=utf-8",
	  ".htm"          =>      "text/html; charset=utf-8",
	  ".js"           =>      "text/javascript; charset=utf-8",
	  ".text"         =>      "text/plain; charset=utf-8",
	  ".txt"          =>      "text/plain; charset=utf-8",
	  ".txt~"         =>      "text/plain; charset=utf-8",
	  ".xml"          =>      "text/xml; charset=utf-8",
	  ".mp4"          =>      "video/mp4",
	)
    
restart lighttpd. This can't be a real solution, more like an ugly workaround.

[http://stackoverflow.com/questions/29349348/specifying-charset-in-http-header-with-lighttpd](http://stackoverflow.com/questions/29349348/specifying-charset-in-http-header-with-lighttpd)  
[https://redmine.lighttpd.net/projects/lighttpd/wiki/Mimetype_assignDetails](https://redmine.lighttpd.net/projects/lighttpd/wiki/Mimetype_assignDetails)  
[https://redmine.lighttpd.net/issues/814](https://redmine.lighttpd.net/issues/814)

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
