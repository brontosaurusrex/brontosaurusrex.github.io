---
published: true
layout: post
date: '2024-03-05 11:45'
title: chessboard.js
tags: chess 
---
> The easiest way to embed a chess board on your site.

[https://chessboardjs.com/download](https://chessboardjs.com/download)

## Ruy Lopez example:

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/public/js/chessboard/css/chessboard-1.0.0.min.css">
<script src="/public/js/chessboard/js/chessboard-1.0.0.min.js"></script>

<div id="ruyLopez" style="width: 500px"></div>

<script>
  var config = {
  pieceTheme: '/public/js/chessboard/img/chesspieces/wikipedia/{piece}.png',
  position: 'r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R',
  draggable: true,
  dropOffBoard: 'trash'
}
var board = Chessboard('ruyLopez', config)
</script>
  

## Notes:  
- If one doesn't know js that well, this is pain to setup
- Pieces are pngs for some reason, why not svgs?
