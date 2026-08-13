#!/bin/bash

set -e

echo "Running tests..."

if [ ! -f "home.html" ]; then
    echo "FAIL: home.html not found"
    exit 1
fi

grep -q "LaunchFlow | Build Faster" home.html
grep -q "Ship faster with a platform your team actually enjoys using." home.html

echo "All tests passed!"