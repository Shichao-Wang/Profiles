" Automatically install vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plug') " Change default installation directory to vundle's


" Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Plug 'preservim/nerdcommenter'

" Plug 'scrooloose/nerdtree' 
" map <F1> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Plug 'tpope/vim-fugitive'

" Plug 'vim-airline/vim-airline'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'

" Plug 'yggdroot/indentline'

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" noremap <C-p> :FZF<CR>

" Themes
" Plug 'joshdick/onedark.vim'
" Plug 'morhetz/gruvbox'

call plug#end()
