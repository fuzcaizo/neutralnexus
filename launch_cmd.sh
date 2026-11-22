#!/usr/bin/env bash
set -e
REPO="fuzcaizo/neutralnexus"
TAG="crimson-comet-calm-badger"
LIB="flavored-lantern.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
