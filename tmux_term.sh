#!/bin/bash
: <<'END_COMMENT'
This script gets the working directory of the current pane and opens a 
new small terminal underneath it, in the same working dir - in the style of VScode's inbuild terminal
END_COMMENT


current_dir=$(tmux display-message -p "#{pane_current_path}")
tmux split-window -v -p 30 -c "$current_dir"
