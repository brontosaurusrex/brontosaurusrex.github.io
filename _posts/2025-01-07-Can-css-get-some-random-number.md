---
published: true
layout: post
date: '2025-01-07 10:17'
title: Can css get some random number based on url or ...
tags: web 
---
No, but js can said the gpt.

ChatGPT  
> You can extract the URL or filename in JavaScript, generate a random or deterministic number based on it, and dynamically update the CSS property.

    <style>
      .random-bg {
        background-image: url('your-image.jpg');
        background-position: 0 0; /* Default position */
      }
    </style>

    <div class="random-bg"></div>

    <script>
      const element = document.querySelector('.random-bg');
      const url = window.location.href; // Get the full URL
      const seed = Array.from(url).reduce((sum, char) => sum + char.charCodeAt(0), 0); // Simple seed based on char codes
      const randomOffset = seed % 100; // Generate a pseudo-random offset (0-99px)
      element.style.backgroundPosition = `${randomOffset}px ${randomOffset}px`;
    </script>
