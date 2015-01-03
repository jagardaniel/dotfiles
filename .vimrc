colorscheme monokai
set nocompatible
syntax enable
filetype plugin indent on
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set number
set showcmd
set incsearch
set hlsearch
set ruler

" settings for gvim on windows

if has("gui_running")
    if has("gui_win32")
        set guifont=Consolas:h10:cANSI
    endif
endif
