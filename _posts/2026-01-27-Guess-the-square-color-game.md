---
published: true
layout: post
date: '2026-01-27 08:49'
title: Guess the square color game
tags: chess
---
Looking at [Magnus evaluating random peoples elo](https://www.youtube.com/watch?v=AeGgb1jhHNQ), one of the questions is also what color certain square is. So here is a little game written by ai that lets you practise that.  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/public/js/chessboard/css/chessboard-1.0.0.min.css">
<script src="/public/js/chessboard/js/chessboard-1.0.0.min.js"></script>

<div id="board" style="max-width: 350px"></div>

<script>
  var config = {
  pieceTheme: '/public/js/chessboard/img/chesspieces/svg/{piece}.svg',
  draggable: false,
  dropOffBoard: 'trash'
}
var board = Chessboard('board', config)
</script>

<br>
[♘ Guess the square color](/guessboard.htm).

Changelog: Fixed some css issues with scrollers (maybe). History log is now visible in js console.
