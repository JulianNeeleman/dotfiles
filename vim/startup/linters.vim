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
let g:clang_compilation_database = '/.build'
let g:clang_cpp_options = '-std=c++14 -stdlib=libc++'
let g:ale_cpp_clangtidy_options = '-std=c++14 -stdlib=libc++'
let g:c_build_dir = 'build'

function! ClangCheckImpl(cmd)
    if &autowrite | wall | endif
    echo "Running " . a:cmd . " ..."
    let l:output = system(a:cmd)
    cexpr l:output
    cwindow
    let w:quickfix_title = a:cmd
    if v:shell_error != 0
        cc
    endif
    let g:clang_check_last_cmd = a:cmd
endfunction

function! ClangCheck()
    let l:filename = expand('%')
    if l:filename =~ '\.\(cpp\|cxx\|cc\|c\)$'
        call ClangCheckImpl("clang-check " . l:filename)
    elseif exists("g:clang_check_last_cmd")
        call ClangCheckImpl(g:clang_check_last_cmd)
    else
        echo "Can't detect file's compilation arguments and no previous clang-check invocation"
    endif
endfunction


