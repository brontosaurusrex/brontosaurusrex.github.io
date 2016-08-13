---
id: 1706
title: android navigacija
date: 2011-06-02T16:40:27+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1706
permalink: /2011/06/android-navigacija/
categories:
  - Uncategorized
---
Mnenje o različnih navigacijskih napravah in podpori za njih (o mapah) si lahko preberete na &#8220;http://www.navitotal.com/forums/showthread.php?932-Xtyler92-s-opinion-about-what-GPS-Software-is-the-best&#8221;.<!--more-->

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-
  
Pomen končnic za iGO navigacijo

&#8211; .FBL: mape (najbolj pomemben del)
  
&#8211; .FTR: Truck Info (vsebuje ključne podatke za tovornjakarje &#8211; zato je sama karta brez tega, za tovornjakarje brezpredmetna;
  
&#8211; .HNR: files with the defined routes (quick, short, economical, easy) &#8211; deluje le, če je naložen kompletni set kart;
  
&#8211; .FDA: Driver Alerts (dodatna opozorila v bližinah šol, nevarnih odsekih,&#8230;);
  
&#8211; .FPA: Point Adressing.
  
*Addresses (along with entry points) stored individually in map file (instead of by street-segment based interpolation)
  
*Vital in: Russia, Czech Republic, Bulgaria; (ne znam iterpretirat);
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
&#8211; .3DL in .3DC: 3DC so zgradbe, 3DL so znamenitosti (cerkve, muzeji, gradovi, mostovi, parlament,&#8230;);
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
&#8211; .DEM: 3D teren-relief (hribi, doline). Zadeva ni nujna, je samo lepotni dodatek, ki pa požre veliko sistemskih resourcev, zato na slabših mlinčkih ni priporočljiv;
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
&#8211; .POI: Points Of Interests (interesne točke) -lahko se jih kombinira z TA ali NQ);
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
&#8211; .HSP: histspeed contain statistical data (&#8220;historical traffic pattern&#8221;
  
*used to support the primo &#8220;smart routes&#8221; feature. &#8211; preračunava na podlagi &#8220;zgodovine poti&#8221;, če so kje konstantni zastoji ipd;
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
&#8211; .PH: Phoneme support (da ti pravilno izgovarja imena ulic &#8211; uporabno samo, če uporabljaš jezik vodenja, ki vsebuje TTS &#8211; tekst-to-speech ; slovenski vmesnik te podpore nima bajduvej;

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
\***\***\***\***\***\***\***\***\***\***\***\***\***\***\***\***\***\***\***\*****

Kje se nahajajo datoteke s posamezno končnico?
  
(&#8220;Primo&#8221; mapa je le za primer, ki jo po potrebi zamenjaš za &#8220;iGO8&#8221; ali za &#8220;Amigo&#8221;

.FBL, .FTR, .HNR, .FDA, .FPA, se nahajajo v mapi:
  
Primocontetnmap
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
.3DL, .3DC, se nahajata v mapi:
  
Primocontentbuilding
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
.DEM se nahaja v mapi:
  
Primocontentdem
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
.POI se nahaja v mapi:
  
Primocontentpoi
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
.HSP se nahaja v mapi:
  
Primocontenthistspeed
  
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8211;
  
.PH se nahaja v mapi:
  
Primocontentphoneme