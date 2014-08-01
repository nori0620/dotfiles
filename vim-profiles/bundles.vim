" neobundle
if has('vim_starting')
  if isdirectory(expand('~/.neobundle/neobundle.vim'))
    set runtimepath+=~/.neobundle/neobundle.vim/
  else
    finish
  endif
  call neobundle#rc(expand('~/.neobundle'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'nanotech/jellybeans.vim'

filetype plugin on
filetype indent on
