---
published: true
layout: post
date: '2023-06-01 14:35'
title: Yamaha 1000cc starting up
tags: audio luv
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

wavesurfer.load('/audio/yamaha1000cc.opus');

</script>

[/audio/yamaha1000cc.opus](/audio/yamaha1000cc.opus)


For no special reason (Zoom h4n build in stereo mic). 
