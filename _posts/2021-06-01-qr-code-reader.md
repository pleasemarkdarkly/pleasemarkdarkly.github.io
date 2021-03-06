---
layout: post
title: Browser based Qr Code Scanning
categories: [QRCodes]
tags: [QRCodes, generator, scanner]
---

<div style="text-align: center"><img src="{{ site.baseurl }}/images/qr-code-reader.jpg" alt="qr-code-reader" style="width: 350px;"/></div>

# Svelte Components for QR Code Activities
A key feature for a crypto-currency site I worked on was the ability for users to easily work with multi-signature wallets using their mobile camera. As the site was a web application, there were various compatibility issues to consider. After sorting through various Chrome-Safari-desktop-mobile issues, disaster was averted and I was able to compose several Svelte Components which enabled both scanning and generating Qr-Codes, those libraries are available [here.](https://github.com/pleasemarkdarkly/svelte-qr-reader-writer)

Generally, the components are created in the following manner. You may want to expose additional events. When I have time to properly create libraries, I envision implementing an event model.

QR code scanning:

```html
<script lang="ts">
    import Scanner from "./JsQRScanner.svelte";
</script>

<section id="Scanner" class="px-2 py-2 bg-white-200 md:py-24">    
    <Scanner />
</section>

```

QR code generating:

```html
<script>
    import { LIB_QRCODE } from "../../utils/libraries";
    import LibLoader from "./LibLoader.svelte";
    import { onDestroy } from 'svelte';
    import { fade } from "svelte/transition";

    export let qrCodeValue = "3J34Z9chznGt98y1sGwwg59GT2cjCWjhqd";
    export let qrSquareSize = 200;

    let qrCode;

    const onLoaded = () => {
        qrCode = new QRCode(document.getElementById("qrcode"), {
            text: qrCodeValue,
            width: qrSquareSize,
            height: qrSquareSize,
            colorDark: "#000000",
            colorLight: "#ffffff00",
            correctLevel: QRCode.CorrectLevel.H,
        });
    };

    const makeQRCode = () => {
        qrCode.makeCode(qrCodeValue);
    };

    const clearQRCode = () => {
        qrCodeValue = "";
        qrCode.clear();
        qrCode.makeCode("");
    };

    onDestroy(async () => {
       qrCode = {}; 
    });

    $: {
        qrCodeValue;
        qrSquareSize;
    }
</script>

<LibLoader
    src={LIB_QRCODE}
    libraryExpectedObject="QRCode"
    on:loaded={onLoaded}
/>

<section id="" class="px-2 py-2 bg-pink-100 md:py-24">
    <div><h1>Component QRCode.svelte</h1></div>
    <br />
    <form>        
        <label for="qrCodeValue">QRCode data to encode</label>
        <textarea id="qrCodeValue" type="textarea" bind:value={qrCodeValue} />
        <br />
        <button on:click|preventDefault={makeQRCode}>Generate</button>
        <button on:click|preventDefault={clearQRCode}>Clear</button>
    </form>
    <br />
    <div transition:fade id="qrcode" />
    <p transition:fade>{qrCodeValue}</p>
</section>

<style>
    textarea {
        width: 350px;
        height: 50px;
    }
    #qrcode {
        width: 200px;
        height: 200px;
        margin-top: 15px;
    }
</style>

```