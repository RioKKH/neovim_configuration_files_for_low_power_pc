set number
set ignorecase
set smartcase
set incsearch
set hlsearch
set noswapfile
set shiftround
set infercase
set virtualedit=all
set autoindent
set mouse=a
set pumblend=10

" - colorscheme setting makes startup of nvim a little bit slower -
colorscheme onedark

filetype plugin indent on
syntax enable

" set statusline+=%{gutentags#statusline()}

set clipboard+=unnamedplus
if has('nvim')
  set clipboard+=unnamedplus
  "if has('mouse')
  "  set mouse=
  "endif
else
  set laststatus=2
  set wildmenu
  set clipboard+=unnamed,autoselect
  set backspace+=indent,eol,start
endif

nnoremap <C-]> g<C-]>


"----------------------------------------------
" disable default plugins
"----------------------------------------------
let g:loaded_gzip                = 1
let g:loaded_tar                 = 1
let g:loaded_tarPlugin           = 1
let g:loaded_zip                 = 1
let g:loaded_zipPlugin           = 1
let g:loaded_rrhelper            = 1
let g:loaded_2html_plugin        = 1
let g:loaded_vimball             = 1
let g:loaded_vimballPlugin       = 1
let g:loaded_getscript           = 1
let g:loaded_getscriptPlugin     = 1
let g:loaded_netrw               = 1
let g:loaded_netrwPlugin         = 1
let g:loaded_netrwSettings       = 1
let g:loaded_netrwFileHandlers   = 1
let g:loaded_LogiPat             = 1
let g:loaded_logipat             = 1
let g:loaded_tutor_mode_plugin   = 1
let g:loaded_spellfile_plugin    = 1
let g:loaded_man                 = 1
let g:loaded_matchit             = 1

"let g:deoplete#enable_at_startup = 1

"----------------------------------------------
" for Lang
"----------------------------------------------
" for vim script
autocmd FileType vim setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType vim setlocal dictionary=/usr/local/share/nvim/runtime/syntax/vim/generated.vim

" for shell script
autocmd FileType sh setlocal tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab
autocmd FileType sh setlocal dictionary=/usr/local/share/nvim/runtime/syntax/sh.vim

" for python
autocmd FileType python setlocal cindent
autocmd FileType python setlocal cinwords=if,else,elif,for,try,except,finally,def,class
autocmd FileType python setlocal tabstop=8 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType python setlocal smarttab nosmartindent textwidth=80 colorcolumn=81
autocmd FileType python setlocal dictionary=/usr/local/share/nvim/runtime/syntax/python.vim
syntax match pythonOperator "\(+\|=\|-\|^\|*\)"
syntax match pythonDelimiter "\(,\|.\|:\)"
syntax keyword pythonSpecialWord self
highlight link pythonSpecialWord Special
highlight link pythonDelimiter Special

let b:current_after_syntax = 'python'

" for C, C++
autocmd FileType c,cpp setlocal cindent
autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType c,cpp setlocal smarttab smartindent textwidth=80
autocmd FileType c setlocal dictionary=/usr/sahre/vim/vim80/syntax/c.vim
autocmd FileType cpp setlocal dictionary=/usr/share/vim/vim80/syntax/cpp.vim

" for cuda
autocmd BufNewFile,BufRead *.cu set filetype=cuda
autocmd BufNewFile,BufRead *.cuh set filetype=cuda
autocmd FileType cuda setlocal cindent
autocmd FileType cuda setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType cuda setlocal smarttab smartindent textwidth=80
autocmd FileType cuda setlocal dictionary=/usr/share/vim/vim80/syntax/cuda.vim

" for Java
autocmd FileType java setlocal cindent
autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType c,cpp setlocal smarttab smartindent
autocmd FileType cpp setlocal dictionary=/usr/share/vim/vim80/syntax/java.vim


" for cafeOBJ
autocmd BufRead,BufNewFile *.cafe setfiletype cafe
autocmd FileType cafe highlight CafeIfThenElse ctermfg=39 guifg=#61AFEF
autocmd FileType cafe highlight CafeReserved ctermfg=114 guifg=#98C379
autocmd FileType cafe highlight CafeParenthesis ctermfg=170 guifg=#C678DD
autocmd FileType cafe highlight CafeOperators ctermfg=204 guifg=#E06C75
syntax match CafeOperators /[+-/*%&|~!@#$^_=<>,.:;]/ containedin=ALL
"syntax match CafeIfThenElse if then else for while
syntax keyword CafeIfThenElse if then else for while containedin=ALL
syntax match CafeParenthesis /[(){}]/ containedin=ALL
syntax match CafeOperators /[+-/*%&|~!@#$^_=<>,.:;]/ containedin=ALL
syntax keyword CafeReserved pr mod op ops var vars eq eqs red open close eof containedin=ALL
autocmd FileType cafe syntax keyword CafeIfThenElse if then else for while containedin=ALL
autocmd FileType cafe syntax keyword CafeReserved pr mod op ops var vars eq eqs red open close eof containedin=ALL
autocmd FileType cafe syntax match CafeParenthesis /[(){}]/ containedin=ALL
autocmd FileType cafe syntax match CafeOperators /[+-/*%&|~!@#$^_=<>,.:;]/ containedin=ALL
"autocmd FileType cafe setlocal commentstring=--\ %s
autocmd FileType cafe setlocal cindent
autocmd FileType cafe setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType cafe setlocal smarttab smartindent
