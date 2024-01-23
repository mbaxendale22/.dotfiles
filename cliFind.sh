#!/bin/bash
: <<'END_COMMENT'
This script pipes the output of looking in specific paths into fzf to allow the user to 
search for a dir within those paths. It provides a preview pane of the subdirectories using tree.
Once the user selects a directory, the user is navigated to to it.
This file must be sources rather than run as a script so that the navigation works as indeed i.e.
source ~/.cliFind.sh
or use ". ~/.cliFind.sh"
END_COMMENT

dir=$(find ~/dev ~/Typescript ~/dev_scripts -type d ! -path "*/node_modules/*" -mindepth 1 -maxdepth 1 \
    | fzf --preview 'tree -C -L 2 -I "node_modules" {}') \
    && cd "$dir"


