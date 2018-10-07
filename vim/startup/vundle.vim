" Author        : julian
" Created       : 27/05/2018
" License       : MIT
" Description   : Vundle configuration.

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" Plugins.
Plugin 'rdnetto/YCM-Generator'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'lyuts/vim-rtags'
Plugin 'scrooloose/nerdtree'
Plugin 'tibabit/vim-templates'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on
syntax on
" End of Vundle configuration.


