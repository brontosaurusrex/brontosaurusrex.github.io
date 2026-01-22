---
published: true
layout: post
date: '2026-01-21 13:26'
title: After effects, make background rectangle the same size as text
tags: video 
---
If my text layer is named 'text', then this js will be in the background rectangle 'Size':

    // Define the text layer to follow
    var textLayer = thisComp.layer("text"); // Replace with your text layer name

    // Get the size of the text
    var textRect = textLayer.sourceRectAtTime(time, false);

    // Define padding
    var paddingX = 10; // Width padding
    var paddingY = 30; // Height padding

    // Calculate final size
    [textRect.width + paddingX, textRect.height + paddingY]

<a href="https://images2.imgbox.com/0b/af/IZ8PItM7_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/0b/af/IZ8PItM7_t.png" alt="image"></a>
