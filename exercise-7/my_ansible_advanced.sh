#!/usr/bin/env bash
if [ ! -z "$2" ]
then
  echo "Usage: ./my_ansible_advanced.sh [username]"
  exit 1

elif [ ! -z "$1" ] && [ ! -d "documents" ]
then
  echo "directory documents must exist"
  exit 2

elif [ ! -z "$1" ] && [ -d "documents" ]
then
  mkdir -p documents/$1/gamez
  mkdir -p documents/$1/images
  mkdir -p documents/$1/work
  mkdir -p documents/$1/work/code
  mkdir -p documents/$1/work/plannings
  touch -a documents/$1/gamez/csgo.exe
  touch -a documents/$1/work/plannings/april.xlsx
  touch -a documents/$1/work/plannings/february.xlsx
  touch -a documents/$1/work/plannings/january.xlsx
  touch -a documents/$1/work/plannings/march.xlsx
  touch -a meeting_notes.txt

elif [ -z "$1"]
then
  mkdir -p documents/gamez
  mkdir -p documents/images
  mkdir -p documents/work
  mkdir -p documents/work/code
  mkdir -p documents/work/plannings
  touch -a documents/gamez/csgo.exe
  touch -a documents/work/plannings/april.xlsx
  touch -a documents/work/plannings/february.xlsx
  touch -a documents/work/plannings/january.xlsx
  touch -a documents/work/plannings/march.xlsx
  touch -a meeting_notes.txt

fi
