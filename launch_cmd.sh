#!/usr/bin/env bash
set -e
REPO="zoeyswritesj/goldflash"
TAG="calm-delta-cosmic-badger"
LIB="async-outbox.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
