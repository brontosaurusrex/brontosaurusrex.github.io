---
published: true
layout: post
date: '2020-04-17 21:56'
title: Animate hide objects to render
tags: blender 
---
[https://blender.stackexchange.com/questions/115526/trying-to-hide-object-during-animation](https://blender.stackexchange.com/questions/115526/trying-to-hide-object-during-animation)

Quote:

- Select your object, go into the Outliner, deactivate the Show In Renders option (camera icon) and create a keyframe (i).

- Now in the Timeline move to the frame where you want your object to appear, go into the Outliner, reactivate the camera icon and create a new keyframe.

- If you duplicate your object, you just have to move the 2nd keyframe in the Dopesheet to change the time of its appearance.

You can also keyframe the Show In Viewports option (monitor icon) so that you can see in the viewport what will happen in your render.

These 2 options, Show In Renders and Show In Viewports are also available and keyframable in the Properties panel > Object > Visibility.
