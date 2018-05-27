" Author        : julian
" Created       : 27/05/2018
" License       : MIT
" Description   : Keybinds.

nmap <F2> :Dispatch<CR>
nmap <F3> :ALEFix<CR>
nmap <F4> :call CurtineIncSw()<CR>
nmap <silent> <F5> :call ClangCheck()<CR><CR>

" Dispatch binds for specific filetypes.
au FileType cmake,cpp let b:dispatch = 'make -C build'
au FileType rest let b:dispatch = ''


