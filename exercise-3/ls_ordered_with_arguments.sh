#!/usr/bin/env bash
if [ ! -z "$1" ] || [ -d "$1" ]
then
  ls -S -l $1

elif [ ! -z "$1" ] && [ ! -d "$1" ]
then
  echo "Error"
  exit 2

else
  ls -l -S
fi
