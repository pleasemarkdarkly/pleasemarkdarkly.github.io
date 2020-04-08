---
layout: post
title: Portable Media Players (1998-2002)
---

In 1998 I was curious why on how to get mp3 to play back on embedded devices. The first 6 months to a year were full of failures. Processors were not powerful enough, storage was expensive, there was no business case. Nonetheless I built a fixed function player from a breadboard in 1998 the below products followed. The entire source code for embedded media players can be found [here](https://github.com/pleasemarkdarkly/adotcorporation). I was lucky enough to work with super smart engineers while I developed business cases and partners. 

<img src="{{ site.baseurl }}/images/iomega.jpg" alt="Hipzip" style="width: 400px;"/>

One of the firsts multi-codec mp3 players created with removable media - the Clik! drive. The software stack for the Iomega Hipzip, built upon eCos which was called Dadio OS, source code [here](https://github.com/pleasemarkdarkly/iomega_hipzip).  The player supported MP3, WMA, and Ogg Vorbis formats.  This device and the IBM 120 MB CF drive were the examplars for the Playlist and buffering patents. 

<img src="{{ site.baseurl }}/images/playlist.png" alt="Playlist" style="width: 400px;"/>

Checkout the manual [Iomega Hipzip Manual]({{ site.baseurl }}/uploads/hipzip.pdf). Iomega Hipzip Manual.  In 1998, unfortunately, USB was pretty new, so using the mass storage specification for mounting the Hipzip made absolutely sense, most mp3 players required some specific drivers to interact with a desktop Jukebox.

<img src="{{ site.baseurl }}/images/mediaplayer.png" alt="Windows Media Player for CE" style="width: 200px;"/>

Our early work in optimizing the mp3 decoder for NECVR4111 and VR4121 paid off by being acquired by Microsoft for the Windows Media Player for Windows CE.

<img src="{{ site.baseurl }}/images/mediadevice.png" alt="Media Device" style="width: 400px;"/>

<<<<<<< HEAD
Digital audio operating system for portable music players that allows MP3 and other music file formats to be played interchangeably; an interoperable platform offered in 16-bit and 32-bit configurations and aimed at lightweight, miniature player designs where long battery life and low cost are essential; allowed management of complex features including high capacity storage, high bandwidth transmission, and embedded database management. [Fixed point mp3 decoder](https://github.com/pleasemarkdarkly/mp3_decoder)
=======
Digital audio operating system for portable music players that allows MP3 and other music file formats to be played interchangeably; an interoperable platform offered in 16-bit and 32-bit configurations and aimed at lightweight, miniature player designs where long battery life and low cost are essential; allowed management of complex features including high capacity storage, high bandwidth transmission, and embedded databases.  We also included a Gameboy emulator.

<img src="{{ site.baseurl }}/images/autopc.png" alt="AutoPC" style="width: 400px;"/>
>>>>>>> 704b93c92016254b5c0eb997f802015fbf9f3fb8

Microsoft's First Generation AutoPC running the Hitachi SH3 Processor. [Hitachi SH3 mp3 decoder](https://github.com/pleasemarkdarkly/mp3_decoder).
Experimental AutoPC Digital Media Player. 


<<<<<<< HEAD
First spinning media player developed using the IBM miniature hard drive.

<img src="{{ site.baseurl }}/images/mediaplayer.png" alt="Windows Media Player for CE" style="width: 200px;"/>

Windows Media Player 5 for Pocket PC that enables the playing of Windows Media and MP3 audio and video files stored on a device or network; first embedded software media player showcasing WMA and the first WMA DRM.
=======
<img src="{{ site.baseurl }}/images/micronas.png" alt="Micronas" style="width: 500px;"/>
Micronas 3507D MP3 Player. Single-chip MPEG 1/2 layer 2/3 audio decoder with a high- performance DSP with a memory word length of 20 bits used in audio broadcast or memory-based playback applications.  I wrote a command line DOS program which wrote the mp3 file to the parallel port and a PIC microcontroller read the bytes and streamed them into the Micronas DSP. From this I was able to gain insight into the workflow which needed to be resolved so the consumer electronics companies could embrace digital media. 
>>>>>>> 704b93c92016254b5c0eb997f802015fbf9f3fb8
