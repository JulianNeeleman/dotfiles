" Author        : julian
" Created       : 27/05/2018
" License       : MIT
" Description   : Fixer configurations for various filetypes.

let g:ale_fixers = {
\   'cpp': ['clang-format'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'python': ['autopep8']
\}

" Settings specific to C/C++.
let g:ale_c_clangformat_options = '-style="{BasedOnStyle: llvm, IndentWidth: 4}"'
