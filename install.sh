#!/bin/bash

# detech_and_backup() {
#  local target_file=$1
#  if [ -e "$target_file" ]; then
#    local backup_file="$target_file.bak"
#    mv -i "$target_file" "$backup_file"
#    echo "backup $target_file to $backup_file"
#  fi
# }

# cwd="$(dirname "$(readlink -f "$0")")"
# detech_and_backup "$HOME/.vimrc"
# ln -s "$cwd/vimrc" "$HOME/.vimrc" 
# detech_and_backup "$HOME/.vim-plug.vimrc"
# ln -s "$cwd/vim-plug.vimrc" "$HOME/.vim-plug.vimrc" 

