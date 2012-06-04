" default tab settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
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

" 1行の最大長
function! SetColumnWidthLimit()
  setlocal textwidth=78
  if exists('+colorcolumn')
    setlocal colorcolumn=+1
  endif
endfun
au Filetype perl,javascript,vim,php call SetColumnWidthLimit()