set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" Plugins.
Plugin 'w0rp/ale'

" End of plugins.
call vundle#end()
filetype plugin indent on

" Tie clipboard to Vim.
set clipboard=unnamedplus

