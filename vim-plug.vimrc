" Automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle') " Change default installation directory to vundle's

Plug 'dense-analysis/ale' " syntax checker
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {'python': ['black', 'isort'], 'json':['prettier']}
let g:ale_set_quickfix = 0
let g:ale_open_list = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
noremap K :ALEPreviousWrap<CR>
noremap J :ALENextWrap<CR>

Plug 'scrooloose/nerdtree' 
map <F1> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

call plug#end()
