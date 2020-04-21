
# install vundle
if [ -d "~/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ -f "$HOME/.vimrc" ]; then
  echo "yes"
#    mv -i "$HOME/.vimrc" "$HOME/.vimrc.bak";
fi
cwd="$(dirname "$(readlink -f $0)")"
ln -s "$HOME/.vimrc" "$cwd/vimrc"
ln -s "$HOME/.vimrc.plugin" "$cwd/vimrc.plugin"

vim +PluginInstall +qall

