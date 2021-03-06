#!/usr/bin/env bash

set -e

for f in /startup/*; do
    if [ -f "$f" -a -x "$f" ]; then
        echo "Running $f $@"
        "$f" "$@"
    fi
done
