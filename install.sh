#!/bin/bash

CWD="$(dirname "$(readlink -f "$0")")"
BACKUP_FOLDER="$CWD/backups"

detech_and_backup() {
 local target_file=$1
 if [ -e "$target_file" ]; then
   local backup_file="$target_file.bak"
   mv -i "$target_file" "$BACKUP_FOLDER/"
   echo "backup $target_file to $BACKUP_FOLDER"
 fi
}

detech_and_backup "$HOME/.vim"
ln -s "$CWD/vim" "$HOME/.vim" 

