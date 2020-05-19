let PluginFile=$HOME . "/.vim-plug.vimrc"
if filereadable(PluginFile)
  exec "source" PluginFile
endif

colorscheme gruvbox
set background=dark

syntax on
set number
set mouse=a
set mousemodel=popup
set guioptions+=a

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType vim setlocal tabstop=2 shiftwidth=2 softtabstop=2

map <C-j> :move+<CR>
map <C-k> :move-2<CR>
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
