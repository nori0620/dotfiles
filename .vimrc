" default tab settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
syntax on

" indent
set autoindent
set nocindent
set smartindent

" mappings
map <C-n>  :tabn<CR>
map <C-p>  :tabp<CR>
inoremap <C-j> <ESC>
nnoremap <silent> <C-e> :vsp %:h<Cr>
