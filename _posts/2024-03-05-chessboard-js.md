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

<div id="ruyLopez" style="width: 550px"></div>

<script>
  var config = {
  pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
  position: 'r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R',
  draggable: true,
  dropOffBoard: 'trash'
}
var board = Chessboard('ruyLopez', config)
</script>

## Multiple boards

<div id="board1" style="width: 200px; display: inline-block;"></div>
<div id="board2" style="width: 200px; display: inline-block;"></div>
<div id="board3" style="width: 200px; display: inline-block;"></div>

<script>
var board1 = Chessboard('board1', {
  position: 'start',
  pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
  showNotation: false
})

var board2 = Chessboard('board2', {
  position: 'r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R',
  pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
  showNotation: false
})

var board3 = Chessboard('board3', {
  position: 'r1k4r/p2nb1p1/2b4p/1p1n1p2/2PP4/3Q1NB1/1P3PPP/R5K1',
  pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
  showNotation: false
})
</script>

## Notes:  
- If one doesn't know js that well, this is pain to setup
- Pieces are pngs for some reason, why not svgs? (FIXED)

## Relevant Code of this post

Where chessboard part (js, img, css) is hosted on 'my' server in /public/js/chessboard/..

        ## Ruy Lopez example:

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="/public/js/chessboard/css/chessboard-1.0.0.min.css">
        <script src="/public/js/chessboard/js/chessboard-1.0.0.min.js"></script>

        <div id="ruyLopez" style="width: 550px"></div>

        <script>
        var config = {
        pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
        position: 'r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R',
        draggable: true,
        dropOffBoard: 'trash'
        }
        var board = Chessboard('ruyLopez', config)
        </script>

        ## Multiple boards

        <div id="board1" style="width: 200px; display: inline-block;"></div>
        <div id="board2" style="width: 200px; display: inline-block;"></div>
        <div id="board3" style="width: 200px; display: inline-block;"></div>

        <script>
        var board1 = Chessboard('board1', {
        position: 'start',
        pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
        showNotation: false
        })

        var board2 = Chessboard('board2', {
        position: 'r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R',
        pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
        showNotation: false
        })

        var board3 = Chessboard('board3', {
        position: 'r1k4r/p2nb1p1/2b4p/1p1n1p2/2PP4/3Q1NB1/1P3PPP/R5K1',
        pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
        showNotation: false
        })
        </script>