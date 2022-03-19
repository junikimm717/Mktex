#!/bin/sh

# do not make calls to this script from docker.
# use the mktex wrapper.

#export PYTHONUSERBASE=/files
cd /files || exit 1;

if [ $# -eq 0 ]; then
  make clean all
  exit
fi

case "$1" in
  watch)
    make watch
  ;;
  build)
    make clean all
  ;;
  *)
    echo "Invalid Command"
    exit 1
  ;;
esac
