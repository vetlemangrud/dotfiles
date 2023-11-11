#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

apt-get update -y
apt-get install -y stow


while getopts 'kz' OPTION; do
  case "$OPTION" in
    k)
      echo "installing kitty"
      ;;
    z)
      echo "installing zshell"
      ;;
    ?)
      echo "script usage: $(basename \$0) [-k] [-z]" >&2
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"