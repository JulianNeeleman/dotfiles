" Author        : julian
" Created       : 27/05/2018
" License       : MIT
" Description   : Linter configurations for various filetypes.

let g:ale_linters = {
\   'cmake': ['cmakelint'],
\   'cpp': ['clangtidy'],
\   'json': ['jsonlint'],
\}

" Basic configuration.
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" Settings specific to C/C++.
let g:ale_cpp_clangtidy_checks = [
\   '*',
\   '-cert-err58-cpp',
\   '-cppcoreguidelines-pro-bounds-array-to-pointer-decay',
\   '-cppcoreguidelines-owning-memory',
\   '-cppcoreguidelines-special-member-functions',
\   '-cppcoreguidelines-pro-type-vararg',
\   '-fuchsia-default-arguments',
\   '-fuchsia-overloaded-operator',
\   '-fuchsia-statically-constructed-objects',
\   '-hicpp-no-array-decay',
\   '-hicpp-special-member-functions',
\   '-hicpp-use-equals-delete',
\   '-hicpp-vararg',
\   '-modernize-use-equals-delete'
\]
