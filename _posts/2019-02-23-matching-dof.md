---
published: true
layout: post
date: '2019-02-23 19:37 +0100'
title: Matching DOF
tags:
  - video
---
[https://www.youtube.com/watch?v=hi_CkZ0sGAw](https://www.youtube.com/watch?v=hi_CkZ0sGAw)

Of bigger sensor to smaller one is done by using crop-factor and aperture (f-stop). For example:

Full frame camera with f4 will have the same dof as camera with crop factor of 1.6 if we divide f value with crop factor. 

    f4 / 1.6 = f2.5. 
    
For micro 4/3 the crop factor is 2 so 

   f4 / 2 = f2. 
   
This will change the exposure, so we can counter that with changing the ISO.

    Full-frame ISO
    --------------- = Equivalent ISO
    (crop factor)^2
    
If full-frame ISO is 400 then for camera with crop factor 1.6

    400 / (1.6)^2 = ISO 156

or crop factor 2

    400 / 4 = ISO 100
    
so

    full-frame focal length / crop factor = Cropped focal length
    full-frame aperture / crop factor = Cropped aperture
    full-frame ISO / (crop factor)^2 = Cropped sensor ISO

## Limitations

For a lens that says 105mm / 1.5 you would need asp-c lens 70 mm with f0.9 (there is no such lens)

### 1/2" sensor

For a small camera with 12.7mm sensor (5.41 is crop factor), what lens would be the same as asp-c with f2 and 50mm lens at ISO 200?

    So f2*1.6 = f3.2 to get the full frame aperture. 
    Full frame ISO would be 1.6^2 * 200 = ISO 512

    Small camera ISO would be 512/5.41^2 = ISO 17 (impossible?)
    Small camera aperture would be f3.2/5.41 =~ 0.6 (impossible?)
    And the lens would be 50/5.41 =~ 9mm (possible)

Small required ISO could be bitten with build in ND filters, but aperture on for example sony PXW-Z280 stock lens is F1.9 - F16 (5.6 - 95.2 mm zoom). 

