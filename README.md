# Mktex

**Note: Consider using [texbld](https://github.com/texbld/texbld) instead.**

mktex is a POSIX-compliant shell script (verified with shellcheck) created by
Juni Kim to quickly work with pre-determined latex templates within a CLI
environment.

## Requirements

You may want to install docker to utilize the dependency-free build system.

Otherwise, you should have pandoc, make, and a distribution of latex with
latexmk.

## Installation

Clone the repository. Then add the mktex folder to your
$PATH variable, as such to your bashrc or zshrc:

```sh
export PATH=(absolute path to mktex):$PATH
```

## Configuration

The following environmental variables are set:

```sh
# This is not configurable.
MKTEX_DIR="$(dirname "$(realpath "$0")")"

# configurable, directory where templates are stored
MKTEX_TEMPLATE_DIR="$MKTEX_DIR/templates"

# configurable, docker image for mktex to build from
MKTEX_DOCKER_IMAGE=junikimm717/mktex-build

# configurable, command for mktex to run after creating a template.
MKTEX_HOOK=
```

## Makefile requirements

Every template must have a Makefile with the following phony targets:

1. all (mandatory) - compile all required files
2. clean (mandatory) - clear all build artefacts
3. watch (optional) - watch for changes and compile (e.g. `latexmk -pvc`)

## Pythontex integration

The mktex docker image should already have numpy and scipy installed (in order
to not bloat up the image with build dependencies).

In order to install a python dependency, use the `mktex pyinstall` command,
which installs packages into a virtual environment folder titled `mktex-venv`.

If the virtual environment does not exist in that location, it will be created
automatically.
