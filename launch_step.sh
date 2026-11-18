#!/usr/bin/env bash
set -e
LIB="visual-casket.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/jilareads/randomforest/releases/download/frosty-forest-cosmic-forest/visual-casket.a" --output "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
