#!/usr/bin/env bash
set -e
REPO="jiabaldda/nodequietdot"
TAG="hidden-canyon-calm-anchor"
LIB="glued-tower.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
