MkTex

mktex is a shell script created by Juni Kim to
quickly work with pre-determined latex templates
within a CLI environment.

mktex [args]

some of the options:
-std: standard latex template
-md: markdown template (for quick notes)
-stat: ap statistics stuff (or pythontex)
-essay: english essays

note: unless you specify, std will be the default template
that is used. For instance, if the command is as follows:

mktex project1 -stat project2 project3 -std project4

project1 and project4 are based on the std template,
while project2 and project3 are based on the stat template.

Requirements

MkTex works for both Linux and MacOS.

Installation

Clone the repository. Then add the mktex folder to your
$PATH variable, as such to your bashrc or zshrc:

export PATH=(absolute path to mktex):$PATH
