#!/bin/sh

PARAMS="$@"
if [ -z "$PARAMS" ]; then
    echo  "Speedtest at $(date +"%y-%m-%d %H:%M")"
fi
/usr/local/bin/speedtest-cli $PARAMS

