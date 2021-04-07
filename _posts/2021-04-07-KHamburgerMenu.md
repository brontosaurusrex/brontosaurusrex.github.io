---
published: true
layout: post
date: '2021-04-07 10:04'
title: KHamburgerMenu
tags: linux 
---
[https://www.phoronix.com/scan.php?page=news_item&px=KDE-KHamburgerMenu](https://www.phoronix.com/scan.php?page=news_item&px=KDE-KHamburgerMenu)
> It substitutes the menu bar meaning that it will act non-
existent when the menu bar is visible. When there is no menu bar or it is
hidden, the KHamburgerMenu will take on all of its responsibilities. I mean for this KHamburgerMenu to be used in all applications that have a menu bar but allow to hide it (or have it hidden by default).

[https://invent.kde.org/frameworks/kconfigwidgets/-/merge_requests/25](https://invent.kde.org/frameworks/kconfigwidgets/-/merge_requests/25)

<style>
.kcontainer {
  display: inline-block;
  cursor: pointer;
}

.bar1, .bar2, .bar3 {
  width: 35px;
  height: 5px;
  background-color: #aaa;
  margin: 6px 0;
  transition: 0.4s;
}

.change .bar1 {
  -webkit-transform: rotate(-45deg) translate(-9px, 6px);
  transform: rotate(-45deg) translate(-9px, 6px);
}

.change .bar2 {opacity: 0;}

.change .bar3 {
  -webkit-transform: rotate(45deg) translate(-8px, -8px);
  transform: rotate(45deg) translate(-8px, -8px);
}
</style>

<div class="kcontainer" onclick="myFunction(this)">
  <div class="bar1"></div>
  <div class="bar2"></div>
  <div class="bar3"></div>
</div>

<script>
function myFunction(x) {
  x.classList.toggle("change");
}
</script>

