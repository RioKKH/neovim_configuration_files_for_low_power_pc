" <TAB>: completion.
"inoremap <silent><expr> <TAB>
"    \ pumvisible() ? "\<C-n>" : 
"    \ <SID>check_back_space() ? "\<TAB>" :
"    \ deoplete#manual_complete()
"function! s:check_back_space() abort "{{{
"  let col = col('.') - 1
"  return !col || getline('.')[col -1] =~ '\s'
"endfunction"}}}

" <C-h>, <BS>: close popup and delete backward char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"

" <CR>: close popup and seve indent
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return deoplete#close_popup() . "\<CR>"
endfunction

" <S-TAB>: completion back
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" neosnippet
inoremap <expr><tab> pumvisible() ? "\<C-n>" :
      \ neosnippet#expandable_or_jumpable() ?
      \    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"

" Use auto delimiter
" call deoplete#custom#set('_', 'converters', [
call deoplete#custom#source('_', 'converters', [
      \ 'converter_remove_paren',
      \ 'converter_remove_overlap',
      \ 'converter_truncate_abbr',
      \ 'converter_truncate_menu',
      \ 'converter_auto_delimiter',
      \ ])

let g:deoplete#enable_camel_case = 1
let g:deoplete#auto_complete_delay = 200
let g:deoplete#auto_complete_start_length = 3
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#max_list = 10
let g:deoplete#num_processes = 2
let g:deoplete#tag#cache_limit_size = 500
