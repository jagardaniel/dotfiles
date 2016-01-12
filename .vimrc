execute pathogen#infect()

colorscheme hybrid
set background=dark
filetype plugin indent on
syntax on

set hlsearch
set ignorecase
set smartcase
set cursorline
set showmatch
set ruler

set tabstop=4
set shiftwidth=4
set expandtab

inoremap jj <Esc>
let g:netrw_liststyle=3

autocmd Filetype python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
autocmd Filetype python match OverLength /\%>79v.\+/
