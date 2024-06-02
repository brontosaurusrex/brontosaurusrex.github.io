---
published: true
layout: post
date: '2024-06-01 10:00'
title: Piper offline voices (Text to speech)
tags: audio cli linux 
---
## Piper

[https://github.com/rhasspy/piper](https://github.com/rhasspy/piper) < piper  
[https://github.com/rhasspy/piper/blob/master/VOICES.md](https://github.com/rhasspy/piper/blob/master/VOICES.md) < *.onnx voices  
[https://piper.wide.video](https://piper.wide.video) < web version  
[https://ssamjh.nz/create-custom-piper-tts-voice](https://ssamjh.nz/create-custom-piper-tts-voice) < record and train your own

    mkdir piper && cd piper
    
- Download/unpack the piper tarball
- Download voices from https://github.com/rhasspy/piper/blob/master/VOICES.md
- Make sure the naming is correct, for example:  
`alan.onnx` and `alan.onnx.json`.

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

Winners so far:

    cat sample.txt | piper -m ~/piper/en_GB-semaine-medium.onnx --debug --length_scale 1.3 --output_file sample_semain_slow.wav

Note that Semaine has multiple voices (-s 0, -s 1, -s 2, -s 3).  
From json:

    "speaker_id_map": {
        "prudence": 0,
        "spike": 1,
        "obadiah": 2,
        "poppy": 3
    }

Note that one can playback/'stream' even when piper is still generating audio, examples:

With aplay (Can't seem to figure out the --interactive aplay switch does nothing)

    cat "$file" | piper -m "${voicespath}/${voices[$rand]}" --output-raw  2>/dev/null | aplay -i -r 22050 -f S16_LE -t raw - || exit

With mpv (Can get into undesirable states when space is pressed to pause playback)

    cat "$file" | piper -m "${voicespath}/${voices[$rand]}" --output-raw 2>/dev/null | mpv --demuxer=rawaudio --demuxer-rawaudio-format=s16le --demuxer-rawaudio-rate=22050 --audio-samplerate=22050 --demuxer-rawaudio-channels=1 --no-resume-playback --msg-level=all=no --no-video -

With ffmpeg in between piper and mpv (Can get into undesirable states when space is pressed to pause playback)

    cat "$file" | piper -m "${voicespath}/${voices[$rand]}" --output-raw 2>/dev/null | ffmpeg -vn -f s16le -ar 22050 -ac 1 -i - -f wav - 2>/dev/null | mpv --no-resume-playback --msg-level=all=no --no-video - 2>/dev/null || exit 1


p.s. [Post from 2021](/2021/05/26/Text-to-speech/).

## Piperread (bash script)

[piperread](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/piperread).

![piperread help screen](https://images2.imgbox.com/10/b5/b4QMbPbc_o.png)
