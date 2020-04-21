#!/bin/bash

# install vundle
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

detech_and_backup() {
  local target_file=$1
  if [ -e "$target_file" ]; then
    local backup_file="$target_file.bak"
    mv -i "$target_file" "$backup_file"
    echo "backup $target_file to $backup_file"
  fi
}

cwd="$(dirname "$(readlink -f "$0")")"
detech_and_backup "$HOME/.vimrc"
ln -s "$HOME/.vimrc" "$cwd/vimrc"
detech_and_backup "$HOME/.vimrc.plugin"
ln -s "$HOME/.vimrc.plugin" "$cwd/vimrc.plugin"

vim +PluginInstall +qall

