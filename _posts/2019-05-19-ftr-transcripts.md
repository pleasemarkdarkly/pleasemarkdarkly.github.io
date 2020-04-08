---
layout: post
title: For the Record to Transcripts
categories: [source code]
tags: [FTR, transcripts, AWS, Google, machine learning]
---

[For the Record Court Audio to ML transcripts](https://github.com/pleasemarkdarkly/speech-to-text-batch)

A lawyer asked me if I knew a simple way to convert a large volume of Court testimony to transcripts without having to order the entire testimony's transcription. As I couldn't find anyting cheaper than $1/minute, I turned to Amazon and Google APIs for audio to text transcription. The cost was something like .006 to .009 every 15 seconds and that's after the $300 a year gift. The above repo is a collection of BASH scripts and Python which chunk up the audio and send them off for transcripting. I hope no one has to use this, but it works really well. 