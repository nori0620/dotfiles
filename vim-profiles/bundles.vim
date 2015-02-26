" neobundle
if has('vim_starting')
  if isdirectory(expand('~/.neobundle/neobundle.vim'))
    set runtimepath+=~/.neobundle/neobundle.vim/
  else
    finish
  endif
  call neobundle#begin(expand('~/.neobundle'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-endwise.git' 

filetype plugin on
filetype indent on
