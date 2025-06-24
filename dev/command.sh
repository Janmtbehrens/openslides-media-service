#!/bin/sh

if [ -n "$dev"   ]; then exec flask --app src/mediaserver run --host 0.0.0.0 --port 9006 --debug; fi
if [ -n "$tests" ]; then sleep inf; fi
if [ -n "$prod"  ]; then exec gunicorn -b 0.0.0.0:9006 src.mediaserver:app; fi