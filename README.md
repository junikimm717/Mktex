# Mktex

mktex is a POSIX-compliant shell script (verified with shellcheck) created by
Juni Kim to quickly work with pre-determined latex templates within a CLI
environment.

## Requirements

You need to have curl and tar on your system to install any premade templates.

You may want to install docker to utilize the dependency-free build system.

## Installation

Clone the repository. Then add the mktex folder to your
$PATH variable, as such to your bashrc or zshrc:

export PATH=(absolute path to mktex):$PATH
