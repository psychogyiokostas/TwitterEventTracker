#!/bin/bash
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
mongoexport --db twitterdb --collection hist_glasgow_geo_coordinates --out exact.json
gdrive upload -p 1jprTiCsH6XfCwUc83GO9eIZDjcsiPri8 exact.json
rm exact.json