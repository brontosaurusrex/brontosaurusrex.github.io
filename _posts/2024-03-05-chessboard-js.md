---
published: false
layout: post
date: '2024-03-05 11:45'
title: chessboard.js
tags: chess 
---
> The easiest way to embed a chess board on your site.

[https://chessboardjs.com/download](https://chessboardjs.com/download)

Ruy Lopez example?:

<script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha384-ZvpUoO/+PpLXR1lu4jmpXWu80pZlYUAfxl5NsBMWOEPSjUn/6Z/hRTt8+pR6L4N2"
        crossorigin="anonymous"></script>
<script src="https://unpkg.com/@chrisoakman/chessboardjs@1.0.0/dist/chessboard-1.0.0.min.js"
        integrity="sha384-8Vi8VHwn3vjQ9eUHUxex3JSN/NFqUg3QbPyX8kWyb93+8AC/pPWTzj+nHtbC5bxD"
        crossorigin="anonymous"></script>

<script>var ruyLopez = 'r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R'
var board = Chessboard('myBoard', ruyLopez)</script>

<div id="myBoard" style="width: 400px"></div>
