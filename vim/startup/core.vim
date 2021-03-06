" Author        : julian
" Created       : 27/05/2018
" License       : MIT
" Description   : Configuration of Vim features without plugin dependencies.

set nocompatible
set number
set clipboard=unnamedplus

" Filetype handling.
au FileType yaml setlocal ts=2 sw=2 sts=2 et

" Ignore certain artifacts in filebrowser.
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
