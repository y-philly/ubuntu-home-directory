if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  call dein#add('~/dein/repos/github.com/Shougo')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-clang')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang-3.8.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'

" Use deoplete.
let g:deoplete#enable_at_startup = 1
