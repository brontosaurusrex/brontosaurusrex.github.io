---
published: true
layout: post
date: '2023-11-03 08:42'
title: Gaussian Splatting + Blender
tags: video blender 
---
<https://www.youtube.com/watch?v=yKz7OfomyCoi>

tldr: capture video, convert to pngs, upload to poly.cam, make splat, download splat, use specific blender plugin to load splat (cycles only), use the power of nodes to animate certain splats around, do camera animation...

chatGPT explanation of gaussian splatting:

> Gaussian splatting is a technique used in computer graphics and visualization to render point cloud data. Point cloud data consists of a collection of points in 3D space, often representing surfaces or objects in the real world. Gaussian splatting involves converting each point in the point cloud into a 2D image or 2D texture representation, typically using a Gaussian distribution to spread the point's attributes, such as color or intensity, across the image.
>
> The Gaussian function is used to determine the influence of each point on nearby pixels in the 2D representation. The spread of the Gaussian function controls how much a point's attributes affect the surrounding pixels. This technique is particularly useful for rendering complex 3D scenes from sparse point cloud data, and it helps in creating smooth and realistic images.
>
> Gaussian splatting is often used in applications like 3D scanning, medical imaging, and computer-aided design (CAD) visualization, where it's important to represent complex 3D structures with high fidelity in 2D images or on 2D displays.
