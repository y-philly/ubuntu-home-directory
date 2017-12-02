if &compatible
  set nocompatible
endif
set runtimepath+=~/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/dein')
  call dein#begin('~/dein')

  call dein#add('~/dein/repos/github.com/Shougo')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
