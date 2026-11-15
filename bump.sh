#!/bin/sh
# Run before each commit: stamps a new build number so open copies of the demo refresh themselves.
V=$(date +%s); sed -i -E "s/const BUILD=\"[0-9]+\"/const BUILD=\"$V\"/" index.html; echo "$V" > version.txt
