---
published: true
layout: post
date: '2024-05-26 18:33'
title: Piper offline voices
tags: audio cli linux 
---
[https://github.com/rhasspy/piper](https://github.com/rhasspy/piper)

    mkdir piper && cd piper
    
- Download/unpack the piper tarball
- Download voices from https://github.com/rhasspy/piper/blob/master/VOICES.md
- Make sure the naming is correct, for example: alan.onnx and alan.onnx.json

Maybe add ~/piper to PATH in .zshrc

    # piper voice thing
    if [ -d "$HOME/piper" ] ; then
        PATH="$HOME/piper:$PATH"
    fi

So now:

    echo "One, Two, three, more text here" | piper -m ~/piper/alan.onnx --output_file wtf.wav # or
    cat tmp.txt | piper -m ~/piper/en_GB-jenny_dioco-medium.onnx --output_file woot.wav

should produce something.

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
  progressColor: 'white'
});

wavesurfer.load('/audio/neumann.opus');

</script>


