filetype plugin indent on
syntax on

colorscheme pablo

if has("win32") || has("win64")
    set encoding=utf-8
endif

set number
set wildmenu
set hidden
set backspace=indent,eol,start
set listchars=tab:>\ ,trail:-,nbsp:+
set visualbell
set t_vb=

set hlsearch
set smartcase
set ignorecase

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

set laststatus=2
set statusline=\ %f\ %y%m%r%=%l/%L\ %c\ 

inoremap jj <Esc>
let mapleader=","
set pastetoggle=<F2>
