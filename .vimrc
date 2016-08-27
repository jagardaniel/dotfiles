execute pathogen#infect()
" ansible-vim
" vim-flake8
" vim-fugitive

filetype plugin indent on

colorscheme hybrid
syntax on

set hlsearch
set ignorecase
set smartcase
set cursorline
set showmatch
set ruler
set laststatus=2
set history=1000

set tabstop=4
set shiftwidth=4
set expandtab

inoremap jj <Esc>
nnoremap <Space> :noh<CR>
set pastetoggle=<F2>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
