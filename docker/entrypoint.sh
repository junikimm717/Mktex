#!/bin/sh

# do not make calls to this script from docker.
# use the mktex wrapper.

if [ -d mktex-venv ]; then
  . ./mktex-venv/bin/activate || exit 1
fi

if [ $# -eq 0 ]; then
  make clean all
  exit
fi

pyinstall() {
  if [ ! -d venv ]; then
    echo """
mktex pyinstall> Creating a new virtual environment in mktex-venv...
    """
    python3 -m venv mktex-venv
    sed "s|false|true|" /files/mktex-venv/pyvenv.cfg > /files/mktex-venv/pyvenv.cfg.tmp
    mv /files/mktex-venv/pyvenv.cfg.tmp /files/mktex-venv/pyvenv.cfg
    . ./mktex-venv/bin/activate || exit 1
  fi

  while [ $# -gt 0 ]; do
    case "$1" in
      [Nn]umpy|[Ss]cipy)
        echo """
mktex pyinstall> $1 already exists, skipping...
        """
      ;;
      *)
        echo """
mktex pyinstall> Installing Package $1
        """
        pip install "$1"
      ;;
    esac
    shift
  done
}

case "$1" in
  watch)
    make watch
  ;;
  build)

    make clean all
  ;;
  pyinstall)
    shift
    pyinstall "$@"
  ;;
  *)
    echo "Invalid Command"
    exit 1
  ;;
esac
