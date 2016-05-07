# Dockerized Atom-Haskell

Dockerized development environment with Atom, Haskell, and Stack

## Building the image

You first need to have the atom image, you can find that image on the Capillary Organization, as this image is based on it.

```
./build.sh
```

(This will build and tag the image to `localhost:5000/dev-haskell` you may need to alter this file for your needs)

## Running Atom

```
./run.sh
```

This will open atom with the full dev environment pointed at your current folder. Open a Haskell file inside of a Stack project with lts-5.15, wait a bit for ghc-mod to spin up for the first time, and enjoy coding.

## Usage

This code works for us, but its best used as a starting point to make your own haskell dev images. If you do, please let us know and we can share knowledge. 
