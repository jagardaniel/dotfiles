execute pathogen#infect()
" ansible-vim
" vim-flake8
" vim-fugitive

filetype plugin indent on

colorscheme gruvbox
set background=dark
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

set statusline=
set statusline+=\ [%n]
set statusline+=\ %<%F
set statusline+=\ %h%m%r
set statusline+=\ %{fugitive#statusline()}
set statusline+=\ %=%-15.(%l/%L%)
set statusline+=\ %P
set statusline+=\

inoremap jj <Esc>
nnoremap <Space> :noh<CR>
set pastetoggle=<F2>
