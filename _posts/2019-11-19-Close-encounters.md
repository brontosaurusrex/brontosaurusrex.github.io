---
published: true
layout: post
date: '2019-11-19 20:08'
title: Close encounters
tags: audio 
---
<!-- main wavesurfer.js lib -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/wavesurfer.js/1.2.3/wavesurfer.min.js"></script>

<div id="waveform"></div>

<div style="text-align: center">
  <button class="btn btn-primary" onclick="wavesurfer.playPause()">
    <i class="glyphicon glyphicon-play"></i>
    Play
  </button>

</div>

<script>
var wavesurfer = WaveSurfer.create({
  container: '#waveform',
  waveColor: 'black',
  progressColor: 'grey'
});

wavesurfer.load('/audio/closeEnc.opus');

</script>

[/audio/closeEnc.opus](/audio/closeEnc.opus)
