#!/bin/bash

PROFILE_REPO="$(dirname "$(readlink -f "$0")")"
BACKUP_FOLDER="$PROFILE_REPO/backups"

function backup_file() {
  FILE_TO_BACKUP=$1
  CURRENT_BACKUP_FOLDER="$BACKUP_FOLDER/$(date "+%Y%m%d")"
  BACKUP_FILE="$CURRENT_BACKUP_FOLDER"_$(basename "$FILE_TO_BACKUP")
  mv -i "$FILE_TO_BACKUP" "$BACKUP_FILE"
}

function backup_and_softlink() {
  NEW_FILE=$1
  FILE=$2
  if cmp -s "$FILE" "$NEW_FILE"; then
    return
  fi

  if [ -e "$FILE" ]; then
    backup_file "$FILE"
  fi
  mkdir -p "$(dirname "$FILE")"
  ln -is "$NEW_FILE" "$FILE"
}

function install_vimrc() {
  VIMRC="$HOME/.vim/vimrc"
  INSTALL_VIMRC="$PROFILE_REPO/vim/vimrc"

  backup_and_softlink "$INSTALL_VIMRC" "$VIMRC"
}

function install_tmux() {
  TMUX_CONF="$HOME/.config/tmux/tmux.conf"
  INSTALL_TMUX_CONF="$PROFILE_REPO/tmux/tmux.conf"

  backup_and_softlink "$INSTALL_TMUX_CONF" "$TMUX_CONF"
}

install_vimrc
install_tmux