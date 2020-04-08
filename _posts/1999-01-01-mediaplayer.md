---
layout: post
title: Portable Media Players (1998-2002)
categories: [source code]
tags: [digital audio]
---

<div style="text-align: center"><img src="{{ site.baseurl }}/images/hipzip.jpg" alt="Hipzip" style="width: 500px;"/></div>

 [IO Dadio Source Code](https://github.com/pleasemarkdarkly/adotcorporation).  [See also Dharma Development Board]({% post_url 1999-06-01-dharma-development %})

In 1998 I was curious why on how to get mp3 to play back on embedded devices. The first 6 months to a year were full of failures. Processors were not powerful enough, storage was expensive, there was no business case. Nonetheless I built a fixed function player from a breadboard in 1998 the below products followed. The entire source code for embedded media players can be found [here](https://github.com/pleasemarkdarkly/adotcorporation). I was lucky enough to work with super smart engineers while I developed business cases and partners. 

One of the firsts multi-codec mp3 players created with removable media - the Clik! drive. The software stack for the Iomega Hipzip, built upon eCos which was called Dadio OS, source code [here](https://github.com/pleasemarkdarkly/iomega_hipzip).  The player supported MP3, WMA, and Ogg Vorbis formats.  This device and the IBM 120 MB CF drive were the examplars for the <a href="{{ site.baseurl }}/patents/us7667123.pdf">playlist (Patent No.: US 7,667,123 B2, Date of Patent: Feb.23,2010)</a> and <a href="{{ site.baseurl }}/patents/us7574272.pdf">buffering (Patent No.: US 7,574,272 B2, Date of Patent: Aug.11,2009)</a> patents. 

<div style="text-align: center"><img src="{{ site.baseurl }}/images/playlist.png" alt="Playlist" style="width: 400px;"/></div>

Checkout the manual [Iomega Hipzip Manual]({{ site.baseurl }}/uploads/hipzip.pdf). 

<div style="text-align: center"><img src="{{ site.baseurl }}/images/ibm340.png" alt="IBM120" style="width: 300px;"/></div>

First spinning media player developed using the IBM miniature hard drive.

<div style="text-align: center"><img src="{{ site.baseurl }}/images/winjam.jpg" alt="WinJam" style="width: 300px;"/></div>

Dual SD-card digital audio player.

<div style="text-align: center"><img src="{{ site.baseurl }}/images/mediadevice.png" alt="Media Device" style="width: 300px;"/></div>

Digital audio operating system for portable music players that allows mp3 and other music file formats to be played interchangeably; an interoperable platform offered in 16-bit and 32-bit configurations and aimed at lightweight, miniature player designs where long battery life and low cost are essential; allowed management of complex features including high capacity storage, high bandwidth transmission, and embedded database management. [Complete Digital Audio OS Source Code](https://github.com/pleasemarkdarkly/adotcorporation)

<div style="text-align: center"><img src="{{ site.baseurl }}/images/mediaplayer.png" alt="Windows Media Player for CE" style="width: 300px;"/></div>

Our early work in optimizing the mp3 decoder for NECVR4111 and VR4121 paid off by being acquired by Microsoft for the Windows Media Player for Windows CE.

<div style="text-align: center"><img src="{{ site.baseurl }}/images/autopc.png" alt="AutoPC" style="width: 500px;"/></div>

Microsoft's First Generation AutoPC running the Hitachi SH3 Processor. [SH3 Optimized MP3 Layer](https://github.com/pleasemarkdarkly/adotcorporation).
Experimental AutoPC Digital Media Player. 

<div style="text-align: center"><img src="{{ site.baseurl }}/images/micronas.png" alt="Micronas" style="width: 700px;"/></div>

Bread board of the first mp3 player I prototyped. 