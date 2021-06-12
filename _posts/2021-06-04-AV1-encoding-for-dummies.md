---
published: true
layout: post
date: '2021-06-05 19:00'
title: AV1 encoding for dummies
tags: video 
---
## Index
{:.no_toc}

* TOC
{:toc}

## Experiment one

Using a [static build](https://johnvansickle.com/ffmpeg/) of ffmpeg, OS=Debian, running in wsl1. according to that page build info, libaom version is: `libaom: 3.1.0-270-g42a875ffe`.

    ffmpegStatic -i input.mov -c:v libaom-av1 -cpu-used 8 -row-mt true -threads 0 -crf 24 -tile-columns 1 -tile-rows 0 out.mp4

Encodes @ 2.7 fps. Cpu-used 8 is the fastest encoding speed. 

_Cons_  
- The out.mp4 looks very artificial, no noise retained. 
- Jerky playback in chrome, according to chrome://media-internals/, player used is kPlay.
- Extremely slow encoding speed, even with the fastest setting.

_Pros_  
- No apparent banding visible, possibly due to input being 10bit. 
- Plays fine with mpv. 
- Plays fine with firefox (not gpu accelerated).
- The promise of 10 bit playback in browser.

_Hardware used_ 

    Processor   Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz, 2592 Mhz, 
                6 Core(s), 12 Logical Processor(s)
    GPU         NVIDIA GeForce RTX 2060

_Notes_  
For some reason 422 chroma subsampling is not supported in libaom, also it seems that film grain synth is not enabled by default anyway.

## Experiment two, the noise, the grain?

Parameter

    -denoise-noise-level 50

gives bunch of errors

    aom_wiener_denoise_2d doesn't handle different chroma subsampling
    Unable to denoise image

> Grain synthesis is disabled if this option is not set or set to 0.
Range seems to be 1-50.

From [https://www.cambridge.org/...overview-of-coding-tools-in-av1.pdf](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/5972E00494363BE37E3439FAE382DB10/S2048770320000025a.pdf/div-class-title-an-overview-of-coding-tools-in-av1-the-first-video-codec-from-the-alliance-for-open-media-div.pdf)  
> Film grain synthesis
> the grain is removed from the content before compression, its parameters are estimated and sent in the AV1 bitstream. The decoder synthesizes the grain based on the received parameters and adds it to the reconstructed video

Forcing format to either (fast to slow encoding)

    -pix_fmt yuv420p
    -pix_fmt yuv420p10le 
    -pix_fmt yuv444p10le

seems to run the encode, but that is not the desired final format. The final encodes looks visually great (all the grain and noise one would need).

420 (8 bit) encode plays fine in chrome and firefox, 444 (10 bit) is jerky in both. 420 (10 bit) plays fine in FF, jerky in chrome.

Example cli (That gives nice looking output)

    ffmpegStatic -i input.mov -pix_fmt yuv420p -c:v libaom-av1 -cpu-used 8 -denoise-noise-level 50 -row-mt true -threads 0 -crf 24 -tile-columns 1 -tile-rows 0 out_denoise5o_420_8bit.mp4

Lowering denoise level will increase bitrate and reduce film synth (imho lowering subjective quality).

_Notes_  
The potential is there, slightly annoyed by the fact that the user has to be aware of the magic `-denoise-noise-level` thing, which doesn't make much sense grammatically either.

## Experiment tres, what is netflix doing?

The one used by netflix is called [SVT-AV1](https://github.com/AOMediaCodec/SVT-AV1). After building it, first try

    ffmpeg -i /mnt/d/output/input.mov -nostdin -f rawvideo -pix_fmt yuv420p - | ./SvtAv1EncApp -i stdin -n 300 -w 1920 -h 1080 -b out.mp4

Fast encoding, crap quality, generates ivf output, not mp4. -pix_fmt yuv422p10le is also accepted but produces file not playbale in mpv or vlc.

The guide [https://github.com/AOMediaCodec/SVT-AV1/blob/master/Docs/svt-av1_encoder_user_guide.md](https://github.com/AOMediaCodec/SVT-AV1/blob/master/Docs/svt-av1_encoder_user_guide.md).

_2 pass crf? medium quality_  

    ffmpeg -i /mnt/d/output/input.mov -nostdin -f rawvideo -pix_fmt yuv420p - | ./SvtAv1EncApp -i stdin --fps 25 --rc 0 --preset 5 --irefresh-type 2 --passes 2 -n 300 -w 1920 -h 1080 --stats woot.stat -b 2passCrf.ivf

> Svt[warn]: The 2-pass encoding support is a work-in-progress, it is only available for experimental and further development uses and should not be used for benchmarking until fully implemented.

Bad quality. No grain, noise retained, posibly bugy encode due to ffmpeg pipe? Doing two pass procedure, that is exporting from ffmpeg to out.yuv and then encoding that yuv makes no difference.

    ./SvtAv1EncApp -i out.yuv --fps 25 --rc 0 -q 20 --preset 8 --irefresh-type 2 --passes 2 -n 500 -w 1920 -h 1080 --stats
 woot.stat --film-grain 50 -b 2passCrfFilmPreset8q20.ivf

> Warn: --passes 2 CRF for preset > 3 is not supported yet, force single pass

Nice looking output! Has noise, has grain.

_Single pass CQP mode?_  

> "CQP mode uses a qp scaling functionality that assigns different frame qps based on their hierarchical positioning to get better coding efficiencies." CQP is actually similar to CRF and does not use fixed QP value for all frames unless you explicitly limit QP range.

    ./SvtAv1EncApp -i out.yuv --fps 25 --rc 0 -q 20 --preset 8 --irefresh-type 2 -w 1920 -h 1080 --film-grain 50 -b 1passCQP.ivf

Very nice output. Noisegen probably worse than that of libaom, edge detection probably better. By lowering -q and --preset the bitrate and encoding speed will increase, increasing quality.

Remuxing ivf to mp4 should be a simple ffmpeg command

    ffmepg -i in.ivf -c:v copy out.mp4

_[Magic grain procedure](https://github.com/AOMediaCodec/SVT-AV1/blob/master/Docs/Appendix-Film-Grain-Synthesis.md)_  

> The film grain synthesis algorithm involves two key steps. In the first step, the input pictures are denoised and the resulting denoised version of the input pictures are used in the encoding process. In the second step, a model of the film grain in the source picture is estimated at the encoder side, and the noise model parameters are included in the bit stream for the decoder to reproduce the noise and add it in the reconstructed pictures.

![grain!](https://raw.githubusercontent.com/AOMediaCodec/SVT-AV1/master/Docs/img/film_grain_fig1.png)

## Four, libaom 1pass ABR mode

[https://trac.ffmpeg.org/wiki/Encode/AV1](https://trac.ffmpeg.org/wiki/Encode/AV1)

    ffmpeg-i in.mov -pix_fmt yuv420p -denoise-noise-level 50 -b:v 2M -c:v libaom-av1 -cpu-used 8 -row-mt true -threads 0 -tile-columns 1 -tile-rows 0 -denoise-noise-level 50 out.mp4

Encoding speed 1.1 fps. Generates file with the average bitrate of 5077 kb/s...

## Five, libaom Constrained quality

    ffmpegStatic -i in.mov -pix_fmt yuv420p -denoise-noise-level 50 -b:v 2M -crf 30 -c:v libaom-av1 -cpu-used 8 -row-mt true -threads 0 -tile-columns 1 -tile-rows 0 -denoise-noise-level 50 out_crf30_bv2M.mp4

Encoder seems to understand input parameters

    Stream #0:0(eng): Video: av1, yuv420p, 1920x1080, q=2-31, 2000 kb/s ...

Getting some notes

    Solving latest noise equation system failed 0!

Gets me file with the average bitrate of 4503 kb/s :/. Upping the quality:

    ffmpegStatic -i in.mov -pix_fmt yuv420p -denoise-noise-level 50 -b:v 2M -crf 30 -c:v libaom-av1 -cpu-used 5 -row-mt true -threads 0 -tile-columns 1 -tile-rows 0 -denoise-noise-level 50 out_crf30_bv2M_q5.mp4

Cpu is far from saturated (staring at htop)

    1[##*               9.8%]   4[##                7.2%]     
    2[###*             11.9%]   5[#####*           22.5%]     
    3[###############* 68.2%]   6[##                7.2%]     
    7[#####*           20.0%]  10[#*                3.3%]
    8[######*          25.7%]  11[####*            17.9%]
    9[###*             13.7%]  12[##                4.6%]

Encoding speed 0.9 fps. Aborted. Changing tiling stuff

    ffmpeg-i in.mov -pix_fmt yuv420p -denoise-noise-level 50 -b:v 2M -crf 30 -c:v libaom-av1 -cpu-used 5 -row-mt true -threads 0 -tile-columns 4 -tile-rows 4 -denoise-noise-level 50 out_crf30_bv2M_q5_b.mp4

Much better cpu saturation, encoding speed 1.3 fps. Average bitrate mid encode showing 4000 kbps, Aborting.

## Six, libaom 2pass.

    ffmpeg -i in.mov -pix_fmt yuv420p -denoise-noise-level 50 -b:v 2M -c:v libaom-av1 -cpu-used 5 -row-mt true -threads 0 -tile-columns 4 -tile-rows 4 -denoise-noise-level 50 -pass 1 -an -f null /dev/null && \
    ffmpeg -i in.mov -pix_fmt yuv420p -denoise-noise-level 50 -b:v 2M -c:v libaom-av1 -cpu-used 5 -row-mt true -threads 0 -tile-columns 4 -tile-rows 4 -denoise-noise-level 50 -pass 2 2pass.mp4

Bitrate reached 2101 kb/s, perfect, quality very nice. Doing an asymmetric encode where 1st pass is `-cpu-used 8` and 2nd pass is `-cpu-used 1` also seems to be possible (getting impossibly low encoding speeds fps ~ 0.2). 