---
published: true
layout: post
date: '2020-10-26 11:17'
title: Lighty running on pi not streaming mp4
tags: web 
---
## Mime test (not a fix)

In /etc/lighttpd/lighttpd.conf, disable perl script

    #include_shell "/usr/share/lighttpd/create-mime.conf.pl"

and add this to the bottom

    # by me from page
    # http://stackoverflow.com/questions/29349348/specifying-charset-in-http-header-with-lighttpd
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
      ".wma"          =>      "audio/x-ms-wma",
      ".wax"          =>      "audio/x-ms-wax",
      ".ogg"          =>      "application/ogg",
      ".webm"         =>      "audio/webm",
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
      ".md5"          =>      "text/plain; charset=utf-8",
      ".xml"          =>      "text/xml; charset=utf-8",
      ".mp4"          =>      "video/mp4",
      ".m3u"	  =>	  "text/html; charset=utf-8",
    )

## Compare configs?

## Pi related?
