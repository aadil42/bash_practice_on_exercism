#!/usr/bin/env bash
if [ $# = 0 ]; then
   echo "Usage: error-handling.sh <person>"
   exit 1 
fi

if [ $# -gt 1 ]; then
   echo "Usage: error-handling.sh <person>"
   exit 1
fi

echo "Hello $1"