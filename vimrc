set nocompatible

" Vundle configuration.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" Plugins.
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-dispatch'
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on
syntax on
" End of Vundle configuration.

" Tmux compatibility.
set term=screen-256color

" Linter settings.
let g:ale_linters = {
\   'cmake': ['cmakelint'],
\   'cpp': ['clangtidy'],
\   'json': ['jsonlint'],
\}

" Fixer settings.
let g:ale_fixers = {
\   'cpp': ['clang-format'],
\   'json': ['prettier']
\}

" Miscellaneous ALE configuration.
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:c_build_dir = 'build'

let g:ale_cpp_clangtidy_options = '-std=c++11'
let g:ale_c_clangformat_options = '-style="{BasedOnStyle: llvm, IndentWidth: 4}"'

" Dispatch defaults.
au FileType cpp let b:dispatch = 'make -C build'

" Custom keybinds.
nmap <F2> :Dispatch<CR>
nmap <F3> :ALEFix<CR>

" Tie clipboard to Vim.
set clipboard=unnamedplus

" Enable line numbering.
set number
