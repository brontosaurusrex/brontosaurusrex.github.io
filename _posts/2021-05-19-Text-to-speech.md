---
published: true
layout: post
date: '2021-05-26 8:00'
title: Text to speech
tags: audio 
---
## Flite and android are free

    flite -voice slt -t "Chuck Norris does not sleep. He waits." -o /dev/stdout | opusenc - - > chuck.opus

[Story](https://forums.bunsenlabs.org/viewtopic.php?pid=114642#p114642).
[Youread script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/youread).

Note: Much better text to speech syntesis could be done with [commercial google cloud account](https://cloud.google.com/text-to-speech/docs/quickstart-protocol), _using an API powered by Google’s AI technologies. Built based on DeepMind’s speech synthesis expertise, the API delivers voices that are near human quality._

## Cloudy IBM Watson Text to Speech

Demo [https://www.ibm.com/demos/live/tts-demo/self-service/home](https://www.ibm.com/demos/live/tts-demo/self-service/home)

Notes: [https://cloud.ibm.com/apidocs/text-to-speech](https://cloud.ibm.com/apidocs/text-to-speech)

### List voices

    curl -u "apikey:{yourapikey}" "https://api.eu-gb.text-to-speech.watson.cloud.ibm.com/instances/{provided number here}/v1/voices"

### Synthesize

Store to file

    curl -X POST -u "apikey:{yourapikey}" --header "Content-Type: application/json" --header "Accept: audio/ogg;codecs=opus" --data-binary "@test.txt" --output test4.opus "https://api.eu-gb.text-to-speech.watson.cloud.ibm.com/instances/{provided number here}/v1/synthesize?voice=en-US_AllisonVoice"

where test.txt is valid json

    {
    "text": "They had now reached the airlock - a large circular steel hatchway of massive strength and weight let into the inner skin of the craft. The guard operated a control and the hatchway swung smoothly open.  But thanks for taking an interest, said the Vogon guard. Bye now. He flung Ford and Arthur through the hatchway into the small chamber within. Arthur lay panting for breath. Ford scrambled round and flung his shoulder uselessly against the reclosing hatchway.  But listen, he shouted to the guard, there's a whole world you don't know anything about... here how about this? Desperately he grabbed for the only bit of culture he knew offhand - he hummed the first bar of Beethoven's Fifth."
    }

Or pipe directly to player

    curl -X POST -u "apikey:{yourapikey}" --header "Content-Type: application/json" --header "Accept: audio/ogg;codecs=opus" --data-binary "@test.txt" "https://api.eu-gb.text-to-speech.watson.cloud.ibm.com/instances/{provided number here}/v1/synthesize?voice=en-US_AllisonVoice" | mpv -

### Text to Json?

[https://forums.bunsenlabs.org/viewtopic.php?id=7609](https://forums.bunsenlabs.org/viewtopic.php?id=7609)

twoion:

    jq -c -n --arg input 'This is arbitrary text input' '{ text: $input }'
    jq -c -n --arg input "$(<anything.txt)" '{ text: $input }'

## Cloudy Amazon AWS polly Text to Speech

After a lot of clicking (and giving them your visa card number), installing aws cli tools and running 'aws configure' and putting in secret keys and ...

    aws polly synthesize-speech \
        --output-format mp3 \
        --voice-id Joanna \
        --text 'Hello, my name is Joanna. I learned about the W3C on 10/3 of last year.' \
        hello.mp3

They say text is limited to 3000 chars, for the longer synth one is supposed to use StartSpeechSynthesisTask and S3 buckets for storage (I don't care).

[https://docs.aws.amazon.com/polly/latest/dg/get-started-cli-exercise.html](https://docs.aws.amazon.com/polly/latest/dg/get-started-cli-exercise.html)

Output format can be

    mp3 | ogg_vorbis | pcm

[https://docs.aws.amazon.com/polly/latest/dg/API_SynthesizeSpeech.html](https://docs.aws.amazon.com/polly/latest/dg/API_SynthesizeSpeech.html)

### List of voices (returns json)

    aws polly describe-voices --language-code en-GB
    aws polly describe-voices --language-code en-US

Neural voices are available in regions: 

    us-east-1, us-west-2, eu-central-1, eu-west-1, eu-west-2  

According to [https://docs.aws.amazon.com/polly/latest/dg/polly-dg.pdf](https://docs.aws.amazon.com/polly/latest/dg/polly-dg.pdf)