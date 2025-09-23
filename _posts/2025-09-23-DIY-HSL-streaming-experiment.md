---
published: true
layout: post
date: '2025-09-23 19:40'
title: DIY HSL streaming experiment
tags: video cli web 
---
Note: Code written by AI. All experiments done on win10 machine.

Goal: Stream my desktop for the purpose of teaching.  
More: Provide a remote user with a link that can be opened in browser (or/and VLC). Don't bother with sound. Use GPU for video encoding to reduce propeller noise.

python server.py

    from http.server import HTTPServer, SimpleHTTPRequestHandler
    
    class CORSHandler(SimpleHTTPRequestHandler):
        def end_headers(self):
            self.send_header('Access-Control-Allow-Origin', '*')
            super().end_headers()
    
    port = 8080
    server = HTTPServer(('0.0.0.0', port), CORSHandler)
    print(f"Serving on http://localhost:{port}")
    server.serve_forever()

stream.bat

    ffmpeg -f gdigrab -video_size 1920x1080 -framerate 25 -i desktop ^
    -c:v h264_nvenc -preset llhq -tune ll -pix_fmt yuv420p ^
    -g 30 -keyint_min 30 -sc_threshold 0 -b:v 4500k -maxrate 4500k -bufsize 9000k ^
    -f hls -hls_time 3 -hls_list_size 6 -hls_flags delete_segments+append_list+omit_endlist+program_date_time ^
    -hls_segment_type fmp4 -hls_fmp4_init_filename init.mp4 stream.m3u8

player.htm

    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>HLS Stream</title>
      <style>
        body { background: #000; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        video { width: 80%; height: auto; }
      </style>
    </head>
    <body>
      <video id="video" controls autoplay muted></video>
    
      <script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>
      <script>
        const video = document.getElementById('video');
        const hlsUrl = 'stream.m3u8'; // your HLS playlist
    
        if (Hls.isSupported()) {
          const hls = new Hls({
            // optional low-latency tuning
            liveSyncDurationCount: 3, 
            maxBufferLength: 10
          });
          hls.loadSource(hlsUrl);
          hls.attachMedia(video);
          hls.on(Hls.Events.MANIFEST_PARSED, () => video.play());
        } else if (video.canPlayType('application/vnd.apple.mpegurl')) {
          // Safari native HLS support
          video.src = hlsUrl;
      video.addEventListener('loadedmetadata', () => video.play());
    } else {
      alert("HLS not supported in this browser");
    }
    </script>
    </body>
    </html>

Notes: Latency is significanti (5-10s).
