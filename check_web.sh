#!/bin/bash

WEB_PORT=80
WEB_ROOT="/var/www/html"
INDEX_FILE="index.html"

if ! nc -z localhost $WEB_PORT 2>/dev/null; then
    exit 1
fi

if [ ! -f "$WEB_ROOT/$INDEX_FILE" ]; then
    exit 1
fi

exit 0
