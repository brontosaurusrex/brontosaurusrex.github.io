---
id: 335
title: javascript encryption
date: 2007-01-17T14:58:16+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070117-065816
permalink: /2007/01/javascript-encryption/
categories:
  - web, guide
---
single key example, not usefull for communication since the key may be intercepted (This is known as symmetric cryptography):

<a href="http://veenix.blogspot.com/2006/07/encrypted-blog-posts.html" target="_blank" >http://veenix.blogspot.com/2006/07/encr &#8230; posts.html</a>  
<a href="http://www.psi.toronto.edu/~vincent/jscrypt.html" target="_blank" >http://www.psi.toronto.edu/~vincent/jscrypt.html</a>

example:
  
[Show encrypted text](javascript:Decrypt_text('unique_name', '9ztdwnXAr/Uwu+fxnp0CbAQU5WvT8snj3Djm/fvTtzvUSzdbnlbL14WKLoM6rR+BTpyv2kfjMF+hNoX2WQq1u377TJrkiPEo/n8fzynjwP+lDQKSs6r4+2GKiAtQWB7rD8OjoLsVCEdRyUf5hgnBNx81Gq/5kYwCqUHpoMNNZEpYdNL3XbQGc3brTX1NkNVl9L7nGQkugUbywGJ5bJXKi9Z9YSh/fmQ315U6+orsQZhW3eunxNftnN8kRR/RF3dm7VSWM3buP7xBV5Eg2rtEjcjfvZ7C0xlrmLc9NnjDNSaGVib+M81QPfV6kd3U3u3MsgjjZ6RuSp4ZRsCdo4vg+KntDshBVadREzCzn0+vypD0Wyu7wbYI1lJUuXACA/hrsvm7NWBnS4olIfuc2sh0XDNEzf6L1yDZgo9y/+J7lAJR4TVBxV/rWR9gngAFJKgS6kFO5lWKVk5SLU7diRDzjMfBayaoJDgX+NoHslnJXnxtRRmNh19U8cYiupv0J6EsiAqZwMJ5awHXlrbHhyymFSTfvIn26R7H5XZqhAkSYf3VSsM69luy3HWAVKWFk9su6nOrRWDA3d+nYRsPWqvFTB6Gj8kDPfz0GIF0wzF6fg1MLsMEi4aI3qa6YEFingvb6+I8GWTxmQfM7oxxoiOYss371sI/LlifvwhpoAmfs6ZlynMHVOhyWOBXaWJMR6z+Haxh1O4MS9DYjLo2qCtkZVGtWkouTAn9AIsr6vWXOr8Z/FtItGeI3YAJuLnzgLDPbfJRvnhxP+Z/IFWne4EmY8l4BTTO9Qk3L9tt2XyQGnTzdLWk7XMn0bdUZfXJLnTDnToUyEuXPtqIMpRLmnGLGHfhmJJr6UueMo2Sq+qGlcxYnngrBnSXXgTpiMxvPLt3GyT5qCMBOPuA9xOYwkkyFDTWQmMk9xw6ySnvw2XcF8BXQ7DoKYBsnVezdXZ33AIqMkk/Fz0kfJhXX7rDM48nbvzresLYCUqkK/hGRX74IcHhsf3l/zfZe767w3dtVIcI37Nwnrgtcl5x9lqd3QowpAM8c115S9S45APhh74/hFvADS8k0i8K4nGk35q6Zt5U++Ybf2uyYUTDkd4ZcLi3y+2GAwcglaqV33mE6UnUrl/nEEn0lH/IncqRfx4TM3+iLkvbzZW0k5tOGNG+ykQIcUyn9/J1wh3YCgV4ee3kFH87DFVwP+oLpHWBuFsitn0DYyVV/qmxnrc6g5fHC78p7EEJmqynq3VW99RAWF5o8uWSuSiKYl0svgchcn1gMbYBy6z6/KgZdSO2Vb4Y0nV3DHgY7h6GJy+apjrB+Hpko1nS6QvquPGUSVs0BbRx9uOjL2XeKxGZxxVQHc7GmSGT00sPR7bnzDxe0UwAlUgmJSdp+GlI618RlHFI666c8NRXGkE249qnXpeDn5E7gG3/uhEh+4nK4WUynRyRQf8WfSb0Oyn8RS5kJQdFgOYJKn08/fVDayVbsh+5VkRYM7elIdxZqBbNqFfBWGxsExUm/3ZUBCnzMa+ZlBtxGTrnxHX9png2C+a+epI1BqBABvKgEXAwDgDaL/LnGKXzvFE0EwbJ/EJH/1cR8g==');)

<div id="unique_name">
</div>

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-

Four issues of major importance for **e-trading** and other forms  
of Internet based communication are:

* Authentication &#8211; how can it be proven that the data sent is really from        
the source who claims to have sent it?

* Confidentiality &#8211; how can we be certain that information has not been viewed        
by someone else during transfer?

* Integrity &#8211; how can we be sure that no changes have been made to the data        
during transfer?

* Non repudiation &#8211; how can we prevent people from denying that they sent        
a piece of information if it suits them?

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;

<a href="http://pajhome.org.uk/crypt/md5/index.html" target="_blank" >http://pajhome.org.uk/crypt/md5/index.html</a>

_Limitations of JavaScript Cryptography</p> 

Over the web, JS cryptography can only protect against passive eavesdropping, as the JavaScript itself is downloaded over an insecure link. If an attacker can modify network traffic, they can make malicious changes to the JavaScript code.

In any case, JS interpreters are not designed for secure programming. They may leave sensitive information lying about in memory. They're too slow for some algorithms, e.g. BSD-style MD5 passwords, or RSA with full-size keys. Bitwise operations are buggy in several implementations.</i>