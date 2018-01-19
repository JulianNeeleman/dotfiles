set nocompatible

" Vundle configuration.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" Plugins.
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tibabit/vim-templates'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on
syntax on
" End of Vundle configuration.

" Template settings.
let g:tmpl_search_paths = ['~/.vim/templates']
let g:tmpl_company = 'ReSnap b.v.'

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
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'python': ['autopep8']
\}

" Miscellaneous ALE configuration.
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:c_build_dir = 'build'

let g:ale_cpp_clangtidy_options = '-std=c++11'
let g:ale_c_clangformat_options = '-style="{BasedOnStyle: llvm, IndentWidth: 4}"'

" Dispatch defaults.
au FileType cmake,cpp let b:dispatch = 'make -C build'

" Custom keybinds.
nmap <F2> :Dispatch<CR>
nmap <F3> :ALEFix<CR>
nmap <F4> :call CurtineIncSw()<CR>

" Tie clipboard to Vim.
set clipboard=unnamedplus

" Enable line numbering.
set number

" FileType settings.
au BufNewFile,BufRead *.rsl set syntax=python
