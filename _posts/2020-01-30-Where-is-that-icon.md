---
published: true
layout: post
date: '2020-01-30 21:36'
title: Where is that icon
tags: linux cli 
---
whereicon.py

    #!/usr/bin/env python3
    import gi
    gi.require_version('Gtk', '3.0')
    from gi.repository import Gtk

    icon_name = input("Icon name (case sensitive): ")
    icon_theme = Gtk.IconTheme.get_default()
    icon = icon_theme.lookup_icon(icon_name, 48, 0)
    if icon:
        print(icon.get_filename())
    else:
        print("not found")
        
    # https://askubuntu.com/questions/52430/how-can-i-find-the-location-of-an-icon-of-a-launcher-in-use

<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" version="1">
 <path fill="#fecd38" d="m26 6a3 2 0 0 0 -3 2 3 2 0 0 0 0.01 0.1523 11 4 0 0 0 -8.01 3.8477 11 4 0 0 0 0.035 0.256c0.287-0.159 0.612-0.256 0.965-0.256h20c0.357 0 0.685 0.099 0.975 0.262a11 4 0 0 0 0.025 -0.262 11 4 0 0 0 -8.012 -3.8457 3 2 0 0 0 0.012 -0.1543 3 2 0 0 0 -3 -2z"/>
 <path fill="#fec006" d="m16 12c-1.108 0-2 0.892-2 2 1.8939 6.8101-1.8838 13.48-4 8-0.7179-1.826-1.7137-3.032-4-3h-1c-0.554 0-1 0.446-1 1v2c0 0.554 0.446 1 1 1h1v2c0.37535 6.3465 1.5231 7.2927 4 8 3.4129 1.207 4 2.3044 4 7 0 1.108 0.892 2 2 2h20c1.108 0 2-0.892 2-2v-1h5c0.554 0 1-0.446 1-1v-18c0-0.554-0.446-1-1-1h-5v-5c0-1.108-0.892-2-2-2h-20zm22 10h3v14h-3v-14z"/>
 <path fill="#fff" opacity=".2" d="m16 12c-1.108 0-2 0.892-2 2 0.039 0.14 0.062 0.278 0.096 0.418 0.249-0.82 1-1.418 1.904-1.418h20c1.108 0 2 0.892 2 2v-1c0-1.108-0.892-2-2-2h-20zm-1.506 6.283c-0.174 4.842-2.837 8.008-4.494 3.717-0.7179-1.826-1.7137-3.032-4-3h-1c-0.554 0-1 0.446-1 1v1c0-0.554 0.446-1 1-1h1c2.2863-0.032 3.2821 1.174 4 3 1.769 4.58 4.686 0.666 4.494-4.717zm23.506 0.717v1h5c0.554 0 1 0.446 1 1v-1c0-0.554-0.446-1-1-1h-5zm0 17v1h3v-1h-3z"/>
 <path fill="#fff" opacity=".1" d="m26 6a3 2 0 0 0 -3 2 3 2 0 0 0 0.01 0.1523 11 4 0 0 0 -8.01 3.8477 11 4 0 0 0 0.035 0.256c0.067-0.037 0.142-0.058 0.213-0.088a11 4 0 0 1 7.762 -3.0157 3 2 0 0 1 -0.01 -0.1523 3 2 0 0 1 3 -2 3 2 0 0 1 3 2 3 2 0 0 1 -0.012 0.1543 11 4 0 0 1 7.768 3.0177c0.072 0.031 0.15 0.051 0.219 0.09a11 4 0 0 0 0.025 -0.262 11 4 0 0 0 -8.012 -3.8457 3 2 0 0 0 0.012 -0.1543 3 2 0 0 0 -3 -2z"/>
 <path opacity=".2" d="m16 12c-0.27 0-0.519 0.07-0.752 0.168a11 4 0 0 0 -0.248 0.832 11 4 0 0 0 0.035 0.256c0.287-0.159 0.612-0.256 0.965-0.256h20c0.357 0 0.685 0.099 0.975 0.262a11 4 0 0 0 0.025 -0.262 11 4 0 0 0 -0.244 -0.828c-0.235-0.1-0.484-0.172-0.756-0.172h-20z"/>
 <path opacity=".2" d="m14.096 14.418c-0.057 0.185-0.096 0.378-0.096 0.582 0.311 1.118 0.456 2.226 0.494 3.283 0.044-1.215-0.071-2.529-0.398-3.865zm-10.096 7.582v1c0 0.554 0.446 1 1 1h1v-1h-1c-0.554 0-1-0.446-1-1zm34 0v1h3v-1h-3zm-32 3v1c0.3754 6.346 1.5231 7.293 4 8 3.413 1.207 4 2.304 4 7 0 1.108 0.892 2 2 2h20c1.108 0 2-0.892 2-2v-1c0 1.108-0.892 2-2 2h-20c-1.108 0-2-0.892-2-2 0-4.696-0.587-5.793-4-7-2.4769-0.707-3.6246-1.654-4-8zm32 15h5c0.554 0 1-0.446 1-1v-1c0 0.554-0.446 1-1 1h-5v1z"/>
 <rect fill="#e82d2d" width="3.606" height="3.606" x="12.32" y="43.57" transform="matrix(.55470 -.83205 .55470 .83205 0 0)"/>
 <rect fill="#e82d2d" width="3.606" height="3.606" x="-.3" y="30.95" transform="matrix(.55470 -.83205 .55470 .83205 0 0)"/>
 <rect fill="#e82d2d" width="5" height="5" x="2.92" y="35.42" transform="matrix(.6 -.8 .6 .8 0 0)"/>
 
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" version="1">
 <rect style="fill:#5294e2" width="28" height="24" x="10" y="4" rx="1.5" ry="1.5"/>
 <rect style="fill:#89e058" width="32" height="24" x="8" y="8" rx="1.5" ry="1.5"/>
 <rect style="fill:#ffcd54" width="36" height="24" x="6" y="12" rx="1.5" ry="1.5"/>
 <rect style="opacity:.2" width="40" height="28" x="4" y="17" rx="2" ry="2"/>
 <rect style="fill:#8e8e8e" width="40" height="28" x="4" y="16" rx="2" ry="2"/>
 <rect style="opacity:.2" width="14" height="4" x="17" y="28" rx="1" ry="1"/>
 <rect style="fill:#ececec" width="14" height="4" x="17" y="27" rx="1" ry="1"/>
 <path style="fill:#ffffff;opacity:0.1" d="M 11.5 4 C 10.669 4 10 4.669 10 5.5 L 10 6.5 C 10 5.669 10.669 5 11.5 5 L 36.5 5 C 37.331 5 38 5.669 38 6.5 L 38 5.5 C 38 4.669 37.331 4 36.5 4 L 11.5 4 z"/>
 <path style="fill:#ffffff;opacity:0.1" d="M 9.5 8 C 8.669 8 8 8.669 8 9.5 L 8 10.5 C 8 9.669 8.669 9 9.5 9 L 38.5 9 C 39.331 9 40 9.669 40 10.5 L 40 9.5 C 40 8.669 39.331 8 38.5 8 L 9.5 8 z"/>
 <path style="fill:#ffffff;opacity:0.1" d="M 7.5 12 C 6.669 12 6 12.669 6 13.5 L 6 14.5 C 6 13.669 6.669 13 7.5 13 L 40.5 13 C 41.331 13 42 13.669 42 14.5 L 42 13.5 C 42 12.669 41.331 12 40.5 12 L 7.5 12 z"/>
 <path style="opacity:0.1" d="M 9.5,7 C 8.669,7 8,7.669 8,8.5 v 1 C 8,8.669 8.669,8 9.5,8 h 29 C 39.331,8 40,8.669 40,9.5 v -1 C 40,7.669 39.331,7 38.5,7 Z"/>
 <path style="opacity:0.1" d="M 7.5,11 C 6.669,11 6,11.669 6,12.5 v 1 C 6,12.669 6.669,12 7.5,12 h 33 c 0.831,0 1.5,0.669 1.5,1.5 v -1 C 42,11.669 41.331,11 40.5,11 Z"/>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" version="1">
 <path opacity=".2" d="m4 40v1c0 1.108 0.892 2 2 2h36c1.108 0 2-0.892 2-2v-1c0 1.108-0.892 2-2 2h-36c-1.108 0-2-0.892-2-2z"/>
 <rect style="fill:#4f4f4f" width="40" height="36" x="4" y="6" rx="2" ry="2"/>
 <path style="opacity:.1;fill:#ffffff" d="m6 6c-1.108 0-2 0.892-2 2v1c0-1.108 0.892-2 2-2h36c1.108 0 2 0.892 2 2v-1c0-1.108-0.892-2-2-2h-36z"/>
 <path style="opacity:.2" d="m10 11v1h-0.5c-0.831 0-1.5 0.669-1.5 1.5s0.669 1.5 1.5 1.5h0.5v1h-1.9082c0.206 0.582 0.754 1 1.4082 1h0.5v1h1v-1h0.5c0.831 0 1.5-0.669 1.5-1.5s-0.669-1.5-1.5-1.5h-0.5v-1h1.9082c-0.206-0.582-0.754-1-1.408-1h-0.5v-1h-1zm-0.5 2h0.5v1h-0.5c-0.277 0-0.5-0.223-0.5-0.5s0.223-0.5 0.5-0.5zm1.5 2h0.5c0.277 0 0.5 0.223 0.5 0.5s-0.2233 0.51287-0.5 0.5h-0.5zm4 2v1h6v-1z"/>
 <path style="fill:#ffffff" d="m10 10v1h-0.5c-0.831 0-1.5 0.669-1.5 1.5s0.669 1.5 1.5 1.5h0.5v1h-1.9082c0.206 0.582 0.754 1 1.4082 1h0.5v1h1v-1h0.5c0.831 0 1.5-0.669 1.5-1.5s-0.669-1.5-1.5-1.5h-0.5v-1h1.908c-0.206-0.582-0.754-1-1.408-1h-0.5v-1zm-0.5 2h0.5v1h-0.5c-0.277 0-0.5-0.223-0.5-0.5s0.223-0.5 0.5-0.5zm1.5 2h0.5c0.277 0 0.5 0.223 0.5 0.5s-0.223 0.513-0.5 0.5h-0.5zm4 2v1h6v-1z"/>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" version="1.1">
 <path opacity=".2" d="m19.984 7.5059a2.996 2.9983 0 0 0 1.1582 2.8945l2.1055 1.6211h1.2988l-3.4043-2.6211a2.996 2.9983 0 0 1 -1.158 -1.8941zm-14.945 8.0041a2.9962 2.9985 0 0 0 2.9531 3.5078h6.1328l1.375-1h-7.5078a2.9962 2.9985 0 0 1 -2.9531 -2.5078zm7.9844 11.719-6.2695 4.5566a2.996 2.9983 0 0 1 -4.791 -1.877 2.996 2.9983 0 0 0 4.791 2.877l6.2422-4.5371a15.977 15.989 0 0 1 -0.01172 -0.23828 15.977 15.989 0 0 1 0.03906 -0.78125zm-0.01367 1.2812a15.977 15.989 0 0 0 -0.02539 0.5 15.977 15.989 0 0 0 15.976 15.99 15.977 15.989 0 0 0 15.977 -15.99 15.977 15.989 0 0 0 -0.02 -0.408 15.977 15.989 0 0 1 -15.957 15.398 15.977 15.989 0 0 1 -15.951 -15.49z"/>
 <path fill="#f4b43f" d="m22.846 4.002a2.996 2.9983 0 0 0 -1.703 5.3984l3.404 2.6206h-16.555a2.9962 2.9985 0 1 0 0.0002 5.997h7.5078l-12.266 8.918a2.996 2.9983 0 1 0 3.5199 4.849l6.2691-4.556a15.977 15.989 0 0 0 -0.039 0.781 15.977 15.989 0 0 0 15.977 15.99 15.977 15.989 0 0 0 15.977 -15.99 15.977 15.989 0 0 0 -6.946 -13.188 2.996 2.9983 0 0 0 -0.215 -0.181l-12.982-9.9945a2.996 2.9983 0 0 0 -1.949 -0.6445z"/>
 <path opacity=".2" d="m29 19a10 10 0 0 1 10 10 10 10 0 0 1 -10 10 10 10 0 0 1 -10 -10 10 10 0 0 1 10 -10z"/>
 <path fill="#fff" d="m29 18a10 10 0 0 1 10 10 10 10 0 0 1 -10 10 10 10 0 0 1 -10 -10 10 10 0 0 1 10 -10z"/>
 <circle fill="#408ef4" cx="29" cy="28" r="5"/>
 <path fill="#fff" opacity=".2" d="m22.846 4.002a2.996 2.9983 0 0 0 -2.862 3.5039 2.996 2.9983 0 0 1 2.862 -2.5039 2.996 2.9983 0 0 1 1.949 0.6445l12.982 9.9945a2.996 2.9983 0 0 1 0.215 0.181 15.977 15.989 0 0 1 6.926 12.78 15.977 15.989 0 0 0 0.02 -0.592 15.977 15.989 0 0 0 -6.946 -13.188 2.996 2.9983 0 0 0 -0.215 -0.181l-12.982-9.9945a2.996 2.9983 0 0 0 -1.949 -0.6445zm-14.854 8.019a2.9962 2.9985 0 0 0 -2.9531 3.487 2.9962 2.9985 0 0 1 2.9531 -2.487h16.555l-1.299-1h-15.256zm6.1328 6.997l-10.891 7.918a2.996 2.9983 0 0 0 -1.2711 2.972 2.996 2.9983 0 0 1 1.2715 -1.972l12.266-8.918h-1.375zm-1.102 9.211l-0.027 0.019a15.977 15.989 0 0 0 0.014 0.262 15.977 15.989 0 0 1 0.013 -0.281z"/>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" version="1">
 <circle style="opacity:.2" cx="24" cy="25" r="20"/>
 <circle style="fill:#8d348e" cx="24" cy="24" r="20"/>
 <circle style="opacity:.3" cx="25.5" cy="22.5" r="14.5"/>
 <circle style="opacity:.2" cx="24" cy="25" r="10"/>
 <circle style="fill:#ffffff" cx="24" cy="24" r="10"/>
 <path style="fill:#691f69" transform="matrix(1.010363 0 0 1 .56408064 -.65825653)" d="m27.154517 24.658257-3.464101 2-3.464102 1.999999v-4-3.999999l3.464102 2z"/>
 <path style="fill:#ffffff;opacity:.1" d="M 24 4 A 20 20 0 0 0 4 24 A 20 20 0 0 0 4.0214844 24.582031 A 20 20 0 0 1 24 5 A 20 20 0 0 1 43.978516 24.417969 A 20 20 0 0 0 44 24 A 20 20 0 0 0 24 4 z"/>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" version="1.1">
 <path style="opacity:0.2" d="m 20,5 0,12.595703 A 14,14 0 0 0 10,31 14,14 0 0 0 24,45 14,14 0 0 0 38,31 14,14 0 0 0 28,17.589844 L 28,5 20,5 Z"/>
 <circle style="fill:#e4e4e4" cx="24" cy="30" r="14"/>
 <path style="opacity:0.2;fill:#ffffff" d="M 20 4 L 20 5 L 28 5 L 28 4 L 20 4 z M 28 16.589844 L 28 17.589844 A 14 14 0 0 1 37.978516 30.585938 A 14 14 0 0 0 38 30 A 14 14 0 0 0 28 16.589844 z M 20 16.595703 A 14 14 0 0 0 10 30 A 14 14 0 0 0 10.023438 30.453125 A 14 14 0 0 1 20 17.595703 L 20 16.595703 z"/>
 <rect style="fill:#e4e4e4" width="8" height="18" x="20" y="4"/>
 <path style="opacity:0.2" d="M 14.839844,27 A 10,10 0 0 0 14,31 10,10 0 0 0 24,41 10,10 0 0 0 34,31 10,10 0 0 0 33.152344,27 l -18.3125,0 z"/>
 <path style="fill:#48a422" d="M 14.839844 26 A 10 10 0 0 0 14 30 A 10 10 0 0 0 24 40 A 10 10 0 0 0 34 30 A 10 10 0 0 0 33.152344 26 L 14.839844 26 z"/>
 <rect style="opacity:0.2" width="12" height="2" x="18" y="5" rx="1" ry="1"/>
 <rect style="fill:#e4e4e4" width="12" height="2" x="18" y="4" rx="1" ry="1"/>
 <path style="opacity:0.2;fill:#ffffff" d="M 19 4 C 18.446 4 18 4.446 18 5 C 18 5.1863667 18.064267 5.3509446 18.152344 5.5 C 18.326087 5.2059684 18.632367 5 19 5 L 29 5 C 29.367633 5 29.673913 5.2059684 29.847656 5.5 C 29.935733 5.3509446 30 5.1863667 30 5 C 30 4.446 29.554 4 29 4 L 19 4 z"/>
</svg>
<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:xlink="http://www.w3.org/1999/xlink"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="48"
   height="48"
   id="svg2"
   version="1.1"
   inkscape:version="0.91 r13725"
   sodipodi:docname="inkscape.svg">
  <metadata
     id="metadata12">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <sodipodi:namedview
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1"
     objecttolerance="10"
     gridtolerance="10000"
     guidetolerance="10"
     inkscape:pageopacity="0"
     inkscape:pageshadow="2"
     inkscape:window-width="2560"
     inkscape:window-height="1018"
     id="namedview10"
     showgrid="true"
     inkscape:showpageshadow="false"
     borderlayer="true"
     fit-margin-top="0"
     fit-margin-left="0"
     fit-margin-right="0"
     fit-margin-bottom="0"
     inkscape:zoom="17.666667"
     inkscape:cx="24"
     inkscape:cy="24"
     inkscape:window-x="0"
     inkscape:window-y="32"
     inkscape:window-maximized="1"
     inkscape:current-layer="layer1"
     showguides="true"
     inkscape:guide-bbox="true">
    <inkscape:grid
       type="xygrid"
       id="grid4141"
       originx="20px"
       originy="0px" />
    <sodipodi:guide
       position="0,48"
       orientation="48,0"
       id="guide4147" />
    <sodipodi:guide
       position="48,0"
       orientation="-48,0"
       id="guide4151" />
    <sodipodi:guide
       position="48,48"
       orientation="0,-48"
       id="guide4153" />
    <sodipodi:guide
       position="4,37"
       orientation="40,0"
       id="guide4219" />
    <sodipodi:guide
       position="6.9999962,3.999959"
       orientation="0,34"
       id="guide4221" />
    <sodipodi:guide
       position="44,32"
       orientation="-29,0"
       id="guide4223" />
    <sodipodi:guide
       position="29.999996,43.999958"
       orientation="0,-23"
       id="guide4227" />
    <sodipodi:guide
       position="24,24"
       orientation="1,0"
       id="guide4388" />
    <sodipodi:guide
       position="27,24"
       orientation="0,1"
       id="guide4390" />
  </sodipodi:namedview>
  <defs
     id="defs4">
    <linearGradient
       inkscape:collect="always"
       id="linearGradient4837">
      <stop
         style="stop-color:#000000;stop-opacity:0.30980393"
         offset="0"
         id="stop4839" />
      <stop
         style="stop-color:#000000;stop-opacity:0;"
         offset="1"
         id="stop4841" />
    </linearGradient>
    <linearGradient
       inkscape:collect="always"
       xlink:href="#linearGradient4837"
       id="linearGradient4302"
       x1="24"
       y1="7"
       x2="24"
       y2="8"
       gradientUnits="userSpaceOnUse" />
    <radialGradient
       inkscape:collect="always"
       xlink:href="#linearGradient4837"
       id="radialGradient4314"
       cx="16.499983"
       cy="6.50002"
       fx="16.499983"
       fy="6.50002"
       r="1.499979"
       gradientUnits="userSpaceOnUse" />
    <radialGradient
       inkscape:collect="always"
       xlink:href="#linearGradient4837"
       id="radialGradient4320"
       gradientUnits="userSpaceOnUse"
       cx="16.499983"
       cy="6.50002"
       fx="16.499983"
       fy="6.50002"
       r="1.499979"
       gradientTransform="translate(15,0)" />
    <linearGradient
       inkscape:collect="always"
       xlink:href="#linearGradient4837"
       id="linearGradient4413-5"
       gradientUnits="userSpaceOnUse"
       gradientTransform="translate(-17.99979,-1088.5197)"
       x1="42"
       y1="1084.0197"
       x2="45"
       y2="1084.0197" />
    <linearGradient
       inkscape:collect="always"
       xlink:href="#linearGradient4837"
       id="linearGradient4413-5-8"
       gradientUnits="userSpaceOnUse"
       gradientTransform="translate(-11.99979,-1122.5197)"
       x1="42"
       y1="1084.0197"
       x2="45"
       y2="1084.0197" />
    <linearGradient
       inkscape:collect="always"
       xlink:href="#linearGradient4837"
       id="linearGradient4413-5-1"
       gradientUnits="userSpaceOnUse"
       gradientTransform="translate(-3.99979,-1101.5197)"
       x1="42"
       y1="1084.0197"
       x2="45"
       y2="1084.0197" />
  </defs>
  <g
     inkscape:groupmode="layer"
     id="layer1"
     inkscape:label="Layer 1">
    <image
       y="0"
       x="0"
       id="image3264"
       xlink:href="data:image/png;base64,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
"
       preserveAspectRatio="none"
       height="48"
       width="48" />
    <circle
       r="1.499979"
       cy="6.50002"
       cx="16.499983"
       id="circle4310"
       style="opacity:1;fill:url(#radialGradient4314);fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <rect
       style="opacity:1;fill:#3949ab;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="rect4306"
       width="14"
       height="1"
       x="17"
       y="5" />
    <path
       style="color:#000000;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:medium;line-height:normal;font-family:sans-serif;text-indent:0;text-align:start;text-decoration:none;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000000;letter-spacing:normal;word-spacing:normal;text-transform:none;direction:ltr;block-progression:tb;writing-mode:lr-tb;baseline-shift:baseline;text-anchor:start;white-space:normal;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#37474f;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1px;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"
       d="M 24.00965,4 C 23.867567,3.99768 23.731207,4.055915 23.634637,4.1601562 L 3.6339277,24.659679 c -0.2406013,0.258897 -0.1439901,0.678887 0.1855535,0.806641 l 12.1566798,5.676258 -3.277459,2.457031 c -0.251426,0.189394 -0.267425,0.561192 -0.0332,0.771485 l 5.000177,4.5 c 0.09161,0.08271 0.210568,0.128626 0.333993,0.128906 l 3.500124,0 0,2.5 c 2.5e-5,0.1326 0.05272,0.25976 0.146489,0.353516 l 2.000071,2 c 0.182715,0.183153 0.474968,0.196706 0.673852,0.03125 l 5.95529,-4.962891 6.947511,-3.474609 c 0.09729,-0.04847 0.176148,-0.127318 0.224618,-0.22461 l 2.000071,-4 c 0.146525,-0.294778 -0.02683,-0.648261 -0.349622,-0.71289 l -3.349728,-0.669922 8.437799,-4.375477 c 0.32573,-0.130821 0.418832,-0.547735 0.179693,-0.804688 L 24.36513,4.1601562 C 24.273187,4.0608749 24.144933,4.0030918 24.00965,4 Z"
       id="path4288"
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cccccccccccccccccccccccc" />
    <path
       style="color:#000000;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:medium;line-height:normal;font-family:sans-serif;text-indent:0;text-align:start;text-decoration:none;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000000;letter-spacing:normal;word-spacing:normal;text-transform:none;direction:ltr;block-progression:tb;writing-mode:lr-tb;baseline-shift:baseline;text-anchor:start;white-space:normal;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#455a64;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1px;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"
       d="m 24,5.2324219 19.138672,19.5737421 -9.324219,4.728992 c -0.46287,0.184365 -0.400853,0.858284 0.08789,0.955078 l 4.357422,0.871094 -1.632813,3.265625 -6.849609,3.425781 c -0.03487,0.01698 -0.06764,0.03795 -0.09766,0.0625 L 24.029297,42.822266 22.5,41.292969 22.5,38.5 C 22.499972,38.223869 22.276131,38.000028 22,38 l -3.808594,0 -4.404297,-3.964844 3.513672,-2.634765 C 17.615743,31.164397 17.54725,30.67389 17.179688,30.533203 L 4.8691406,24.798351 Z"
       id="path4266"
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cccccccccccccccccc" />
    <path
       style="color:#000000;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:medium;line-height:normal;font-family:sans-serif;text-indent:0;text-align:start;text-decoration:none;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000000;letter-spacing:normal;word-spacing:normal;text-transform:none;direction:ltr;block-progression:tb;writing-mode:lr-tb;baseline-shift:baseline;text-anchor:start;white-space:normal;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#eceff1;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1px;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"
       d="m 24.009766,6 a 0.50005,0.50005 0 0 0 -0.373047,0.1582031 l -8,8.4999999 a 0.50005,0.50005 0 0 0 0.0098,0.695313 l 1,1 a 0.50005,0.50005 0 0 0 0.13086,0.09375 l 2,1 A 0.50005,0.50005 0 0 0 19,17.5 l 2,0 a 0.50005,0.50005 0 0 0 0.447266,-0.277344 l 2.285156,-4.570312 0.773437,5.417968 a 0.50005,0.50005 0 0 0 0.847657,0.283204 L 27,16.707031 l 0.646484,0.646485 a 0.50005,0.50005 0 0 0 0.63086,0.0625 l 3,-2 A 0.50005,0.50005 0 0 0 31.5,15 l 0,-1 a 0.50005,0.50005 0 0 0 -0.134766,-0.341797 l -7,-7.4999999 A 0.50005,0.50005 0 0 0 24.009766,6 Z"
       id="path4284" />
    <rect
       style="opacity:1;fill:url(#linearGradient4302);fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="rect4294"
       width="4"
       height="2"
       x="22"
       y="6" />
    <rect
       style="opacity:1;fill:#7e57c2;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="rect4290"
       width="4"
       height="2.999958"
       x="22"
       y="4.000042" />
    <rect
       style="opacity:1;fill:#f5f5f5;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="rect4292"
       width="2"
       height="1"
       x="23"
       y="5" />
    <circle
       style="opacity:1;fill:#7e57c2;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="path4308"
       cx="16.499983"
       cy="5.500021"
       r="1.499979" />
    <circle
       style="opacity:1;fill:url(#radialGradient4320);fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="circle4316"
       cx="31.499989"
       cy="6.50002"
       r="1.499979" />
    <circle
       r="1.499979"
       cy="5.500021"
       cx="31.499989"
       id="circle4318"
       style="opacity:1;fill:#7e57c2;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <rect
       transform="matrix(0,1,-1,0,0,0)"
       style="opacity:1;fill:url(#linearGradient4413-5-8);fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="rect4401-0-7"
       width="3"
       height="3"
       x="29.999617"
       y="-40.000008" />
    <rect
       y="28.999617"
       x="37.000008"
       height="3"
       width="3"
       id="rect4403-2-4"
       style="opacity:1;fill:#7e57c2;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <rect
       y="29.999617"
       x="38.000008"
       height="1"
       width="1"
       id="rect4405-2-8"
       style="opacity:1;fill:#eceff1;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <rect
       transform="matrix(0,1,-1,0,0,0)"
       style="opacity:1;fill:url(#linearGradient4413-5-1);fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="rect4401-0-3"
       width="3"
       height="3"
       x="37.999615"
       y="-19.000008" />
    <rect
       y="36.999615"
       x="16.000008"
       height="3"
       width="3"
       id="rect4403-2-9"
       style="opacity:1;fill:#7e57c2;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <rect
       y="37.999615"
       x="17.000008"
       height="1"
       width="1"
       id="rect4405-2-5"
       style="opacity:1;fill:#eceff1;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <rect
       transform="matrix(0,1,-1,0,0,0)"
       style="opacity:1;fill:url(#linearGradient4413-5);fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       id="rect4401-0"
       width="3"
       height="3"
       x="23.999617"
       y="-6.0000086" />
    <rect
       y="22.999617"
       x="3.0000086"
       height="3"
       width="3"
       id="rect4403-2"
       style="opacity:1;fill:#7e57c2;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <rect
       y="23.999617"
       x="4.0000086"
       height="1"
       width="1"
       id="rect4405-2"
       style="opacity:1;fill:#eceff1;fill-opacity:1;stroke:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
</svg>
