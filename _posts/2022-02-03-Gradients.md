---
published: true
layout: post
date: '2022-02-03 11:05'
title: Gradients
tags: mine 
---

<a href="https://i.imgur.com/mwxDAFR.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/mwxDAFRb.png"></a>
<a href="https://i.imgur.com/qHr96Xr.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/qHr96Xrb.png"></a>
<a href="https://i.imgur.com/voul0jS.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/voul0jSb.png"></a>
<a href="https://i.imgur.com/1AhQp2g.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/1AhQp2gb.png"></a>
<a href="https://i.imgur.com/urg7ZPl.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/urg7ZPlb.png"></a>
<a href="https://i.imgur.com/kaNbE9P.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/kaNbE9Pb.png"></a>
<a href="https://i.imgur.com/tEmBRbh.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/tEmBRbhb.png"></a>
<a href="https://i.imgur.com/s1ReF5z.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/s1ReF5zb.png"></a>
<a href="https://i.imgur.com/2g8gww6.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/2g8gww6b.png"></a>
<a href="https://i.imgur.com/x3MmrwF.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/x3MmrwFb.png"></a>
<a href="https://i.imgur.com/DoeHsy4.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/DoeHsy4b.png"></a>
<a href="https://i.imgur.com/7PoeOV7.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/7PoeOV7b.png"></a>
<a href="https://i.imgur.com/y2JTAB9.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/y2JTAB9b.png"></a>
<a href="https://i.imgur.com/0FbunOm.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/0FbunOmb.png"></a>
<a href="https://i.imgur.com/vmn0r2Y.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/vmn0r2Yb.png"></a>
<a href="https://i.imgur.com/Y4M5RPP.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/Y4M5RPPb.png"></a>
<a href="https://i.imgur.com/Cugl9FF.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/Cugl9FFb.png"></a>
<a href="https://i.imgur.com/xAZnAUl.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/xAZnAUlb.png"></a>
<a href="https://i.imgur.com/Fmd77fR.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/Fmd77fRb.png"></a>
<a href="https://i.imgur.com/4bBH9al.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/4bBH9alb.png"></a>
<a href="https://i.imgur.com/Mcu1GUL.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/Mcu1GULb.png"></a>

Noise overlay used  
<a href="https://i.imgur.com/TfolRAP.png#nohash" rel="noreferrer"><img src="https://i.imgur.com/TfolRAPb.png"></a>
  
Generated with [wallcolGradient](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/wallcolGradient) or [wallcol2DGradient](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/wallcol2DGradient).

HCL  
[https://howlettstudios.com/articles/2017/5/6/the-problem-with-hsv](https://howlettstudios.com/articles/2017/5/6/the-problem-with-hsv)  
> HSV claims to separate out Hue, Saturation, and Brightness/Value, but changes to the Hue can cause dramatic changes to the perceived brightness. What would it look like if we corrected for these errors and built the corrections directly into the color space?
> Introducing Hue Chroma Lightness (HCL). 

[RGB to HCL](https://www.chilliant.com/rgb2hsv.html)  

    Converting RGB to HCL
      float3 RGBtoHCL(in float3 RGB)
      {
        float3 HCL;
        float H = 0;
        float U = min(RGB.r, min(RGB.g, RGB.b));
        float V = max(RGB.r, max(RGB.g, RGB.b));
        float Q = HCLgamma / HCLy0;
        HCL.y = V - U;
        if (HCL.y != 0)
        {
          H = atan2(RGB.g - RGB.b, RGB.r - RGB.g) / PI;
          Q *= U / V;
        }
        Q = exp(Q);
        HCL.x = frac(H / 2 - min(frac(H), frac(-H)) / 6);
        HCL.y *= Q;
        HCL.z = lerp(-U, V, Q) / (HCLmaxL * 2);
        return HCL;
      }

How about  

    convert xc:#FFBED8 -colorspace HCL txt:
    # ImageMagick pixel enumeration: 1,1,65535,hcl
    0,0: (336,25.4902%,83.2929%)  #EEEE4141D53A  hcl(336,25.4902%,83.2929%)
