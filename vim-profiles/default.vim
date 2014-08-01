"colorscheme
colorscheme jellybeans

" status line settings
set laststatus=2
let &statusline = '%<%f %m%r%h%w[%{(&fenc!=""?&fenc:&enc)}][%{&ff}]%= %l,%c%V%8P'

" default tab space settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 
set showcmd
set showmatch
set hlsearch

" syntax completion settings {{{
syntax on
filetype on
filetype plugin on
"}}}

" encoding settings {{{
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp-3,iso-2022-jp,euc-jisx0213,euc-jp,ucs-bom,euc-jp,eucjp-ms,cp932
set fileencoding=utf-8
set fileformat=unix
"}}}

" indent
set autoindent
set nocindent
set smartindent

" ignore and smartcase
set ignorecase
set smartcase
