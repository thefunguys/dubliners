#!/bin/sh
(cd words; ./play.sh albums/$1)
(cd Music; ./melody.sh)
sox -m words/out.wav Music/song.wav static/song.wav
mv static/song.wav static/$(date +"%s").wav
