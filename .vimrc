if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'master', 'build': 'yarn install --frozen-lockfile' })
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('smallwat3r/vim-hashpunk-sw')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
colorscheme hashpunk-sw-sweet

set nobackup
set noswapfile
set autoread
set hidden
set showcmd


set number
set smartindent
set visualbell
set clipboard=umnamed
set showmatch
set expandtab
set tabstop=4
set shiftwidth=4

set background=dark
set mouse=a
set backspace=indent,eol,start
