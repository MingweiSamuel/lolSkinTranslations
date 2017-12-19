#!/bin/bash
for loc in `cat locales.txt`; do
  wget -O "output/$(echo $loc).json" "https://yir.lolstatic.com/localizedText/$(echo $loc)/skins.json" &> /dev/null &
done
