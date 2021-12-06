#!/usr/bin/env bash
if [ -z $1 ] || [ -z $2 ] || [ ! -z $3 ]
then
  echo "Usage: ./salutation.sh firstname lastname"
  exit 1
elif [ $1 = $2 ]
then
  echo "Firstname and lastname cannot be the same!"
  exit 2
else
  echo "Hello $1 $2 have a nice day!."
  exit 0
fi
