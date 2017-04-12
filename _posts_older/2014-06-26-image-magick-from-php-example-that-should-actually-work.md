---
id: 3241
title: image magick from php, example that should actually work
date: 2014-06-26T16:46:19+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3241
permalink: /2014/06/image-magick-from-php-example-that-should-actually-work/
categories:
  - Uncategorized
---
<pre><?php
// var_dump(class_exists('Imagick'));

// Report all errors except E_NOTICE
error_reporting(E_ALL &#038; ~E_NOTICE);

/* Read the image */
$im = new Imagick("test.png");

/* Thumbnail the image */
$im->thumbnailImage(200, null);

/* Create a border for the image */
$im->borderImage(new ImagickPixel("white"), 5, 5);

/* Clone the image and flip it */
$reflection = clone $im;
$reflection->flipImage();

/* Create gradient. It will be overlayed on the reflection */
$gradient = new Imagick();

/* Gradient needs to be large enough for the image and the borders */
$gradient->newPseudoImage($reflection->getImageWidth() + 10, $reflection->getImageHeight() + 10, "gradient:transparent-black");

/* Composite the gradient on the reflection */
$reflection->compositeImage($gradient, imagick::COMPOSITE_OVER, 0, 0);

/* Add some opacity. Requires ImageMagick 6.2.9 or later */
$reflection->setImageOpacity( 0.3 );

/* Create an empty canvas */
$canvas = new Imagick();

/* Canvas needs to be large enough to hold the both images */
$width = $im->getImageWidth() + 40;
$height = ($im->getImageHeight() * 2) + 30;
$canvas->newImage($width, $height, new ImagickPixel("black"));
$canvas->setImageFormat("png");

/* Composite the original image and the reflection on the canvas */
$canvas->compositeImage($im, imagick::COMPOSITE_OVER, 20, 10);
$canvas->compositeImage($reflection, imagick::COMPOSITE_OVER, 20, $im->getImageHeight() + 10);

/* Output the image*/
header("Content-Type: image/png");
echo $canvas;
?>
</pre>

p.s. Image magick is also supposed to convert or make thumb for video files;

<pre>convert prodigy.mp4[100] thumb.png</pre>