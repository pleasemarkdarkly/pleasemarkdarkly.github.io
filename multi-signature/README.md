# MultiSigAddress
MultiSigAddress Generator and Spender port to Svelte / Typescript

The following site is currently being converted to components/Svelte, Typescript, and Cloud Functions for additional security.

## Notes/Features
Currently the following has been tested:
 - User provides an input for m and n for the m-of-n (ie 2 of 3, 3 of 5, etc)
 - CSPRNG provided by bitcoinJS-lib creates n key pairs, and those public keys are used to create the multisig P2SH address.
 - Output to user is the P2SH address on the left-hand side, and on the right-hand side the first private key out of n keys.
 - The additional private keys can be cycled through using the arrow buttons above the private key QR code
 - Additional output to the user includes the public keys (and qr codes) and the sequence they were used to create the address and redeem script.
 - User can save redeem script hex to a USB drive, OR if they want to stay true to paper wallet regenerate the redeem script using the public key qr codes along with the `redeem-script.html` tool which can scan your public key qr codes with your webcam. Typing in by hand I suppose is a possible third option, but not likely or recommended considering the redeem script can be quite long.

To make the paper wallet more like a wallet, I have also added some additional standalone pages (tools) that will allow users to find UTXOs for specific addresses to build and sign transactions.
 - Users build transactions with UTXO selection using the `multisig-build.html` tool. (internet needed to fetch UTXOs)
 - Users sign transactions offline using the `multisig-sign.html` tool
 - Users are responsible for broadcasting the raw hex transactions

## Warnings
Obviously the shortcomings are:
 - building the transaction as a contract and managing keys will take significant changes to terminology and user interface
 - fees should be Satoshis per byte like segwitaddress.org instead of inputting exact fee in Satoshis (and computed as fees for site)
 - users cant create an address from their own provided public keys, segmenting features for version releases
 
It currently supports both testnet and mainnet. While this works on mainnet, I don't recommend using this at all.

## Acknowledgement
Kyle Honeycutt/coinables
Kazuhiko Arase
BitcoinJS-lib
Bitcore

