#!/usr/bin/env bash

if [[ $# -gt 1 ]]; then
   echo "Usage: bash raindrops.sh <Number>"
   exit 1
fi

if [[  $(($1 % 3)) == 0 ]] && [[ $(($1 % 5)) == 0 ]] && [[ $(($1 % 7)) == 0 ]]; then
   echo "PlingPlangPlong"
   exit 1
fi

if [[ $(($1 % 3)) == 0 ]] && [[ $(($1 % 5)) == 0 ]]; then
   echo "PlingPlang"
   exit 1
fi

if [[ $(($1 % 3)) == 0 ]] && [[ $(($1 % 7)) == 0 ]]; then
   echo "PlingPlong"
   exit 1
fi

if [[ $(($1 % 5)) == 0 ]] && [[ $(($1 % 7)) == 0 ]]; then
   echo "PlangPong"
   exit 1
fi

if [[ $(($1 % 3)) == 0 ]]; then
   echo "Pling"
   exit 1
fi

if [[ $(($1 % 5)) == 0 ]]; then
   echo "Plang"
   exit 1
fi

if [[ $(($1 % 7)) == 0 ]]; then
   echo "Plong"
   exit 1
fi

echo $1