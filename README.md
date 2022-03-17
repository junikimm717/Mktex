# Mktex

mktex is a POSIX-compliant shell script (verified with shellcheck) created by
Juni Kim to quickly work with pre-determined latex templates within a CLI
environment.

## Requirements

You may want to install docker to utilize the dependency-free build system.

Otherwise, you should have pandoc, make, and a distribution of latex with
latexmk.

## Makefile requirements

Every template must have a Makefile with the following phony targets:

1. all (mandatory) - compile all required files
2. clean (mandatory) - clear all build artefacts
3. watch (optional) - watch for changes and compile (e.g. `latexmk -pvc`)

## Installation

Clone the repository. Then add the mktex folder to your
$PATH variable, as such to your bashrc or zshrc:

```sh
export PATH=(absolute path to mktex):$PATH
```
