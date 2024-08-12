#!/usr/bin/env bash

outputDir="$HOME/Pictures/screenshots/"
outputFile="snapshot_$(date +%Y-%m-%d_%H-%M-%S).png"
outputPath="$outputDir/$outputFile"
mkdir -p "$outputDir"

if grimblast --freeze copy area; then
    recentFile=$(ls -t "$outputDir"/snapshot_*.png | head -n 1)
    notify-send "Grimblast" "Screenshot successful" \
        -i video-x-generic \
        -a "Grimblast" \
        -t 3500 \
        -u normal
fi
