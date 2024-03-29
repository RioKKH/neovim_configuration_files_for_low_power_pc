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
set pumblend=30

" - colorscheme setting makes startup of nvim a little bit slower -
colorscheme onedark

filetype plugin indent on
syntax enable

" set statusline+=%{gutentags#statusline()}

set clipboard+=unnamed
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
let g:python_host_prog = expand('/usr/bin/python2.7')
let g:python3_host_prog = expand('~/.pyenv/versions/3.9.15/bin/python3.9')
"let g:python3_host_prog = expand('~/.pyenv/versions/3.11.0/bin/python3.11')
"let g:python3_host_prog = expand('~/.pyenv/versions/a3.8.9/bin/python3.8')
"let g:python3_host_prog = expand('~/.pyenv/versions/anaconda3-2019.03/bin/python3.7')

"let g:deoplete#enable_at_startup = 1
"
" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'onedark'

" gen_tags.vim
let g:gen_tags#gtags_auto_get = 1
let g:gen_tags#ctags_auto_get = 1

" quickrun
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
      \ 'outputter/buffer/opener': 'new',
      \ 'outputter/buffer/into': 1,
      \ 'outputter/buffer/close_on_empty': 1,
      \ }

"----------------------------------------------
" for Lang
"----------------------------------------------
" for C, C++
autocmd FileType c,cpp,cuda setlocal cindent
autocmd FileType c,cpp,cuda setlocal smarttab smartindent textwidth=100
autocmd FileType c,cpp,cuda setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
"autocmd FileType c,cpp,cuda setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType c setlocal dictionary=/home/kakehi/bin/nvim0.9.2/usr/share/nvim/runtime/syntax/c.vim
autocmd FileType cpp setlocal dictionary=/home/kakehi/bin/nvim0.9.2/usr/share/nvim/runtime/syntax/cpp.vim
autocmd FileType cuda setlocal dictionary=/home/kakehi/bin/nvim0.9.2/usr/share/nvim/runtime/syntax/cuda.vim
"autocmd FileType c setlocal dictionary=/snap/nvim/1722/usr/share/nvim/runtime/syntax/c.vim
"autocmd FileType cpp setlocal dictionary=/snap/nvim/1722/usr/share/nvim/runtime/syntax/cpp.vim
""autocmd FileType c setlocal dictionary=/usr/local/share/nvim/runtime/syntax/c.vim
"autocmd FileType cpp setlocal dictionary=/usr/local/share/nvim/runtime/syntax/cpp.vim
"autocmd FileType cuda setlocal dictionary=/usr/local/share/nvim/runtime/syntax/cpp.vim
" C++ syntax highlight
" let g:cpp_clas_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
" let g:cpp_class_decl_highlight = 1
" let g:cpp_posix_standard = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_concepts_hightlight = 1

" for vim script
autocmd FileType vim setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
"autocmd FileType vim setlocal dictionary=/usr/local/share/nvim/runtime/syntax/vim/generated.vim
autocmd FileType vim setlocal dictionary=/home/kakehi/bin/nvim0.9.2/usr/share/nvim/runtime/syntax/vim.vim

" for shell script
autocmd FileType sh setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType sh setlocal smarttab nosmartindent colorcolumn=81
autocmd FileType sh setlocal dictionary=/home/kakehi/bin/nvim0.9.2/usr/share/nvim/runtime/syntax/sh.vim
"autocmd FileType sh setlocal dictionary=/usr/local/share/nvim/runtime/syntax/sh.vim
if executable('shfmt')
  let &l:formatprg='shfmt'
  let g:shfmt_extra_args = '-i 2 -ci -bn -sr -fn'
  let g:shfmt_fmt_on_save = 1
endif


" for python
autocmd FileType python setlocal cindent
autocmd FileType python setlocal cinwords=if,else,elif,for,try,except,finally,def,class
autocmd FileType python setlocal tabstop=8 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType python setlocal smarttab nosmartindent colorcolumn=81
"autocmd FileType python setlocal smarttab nosmartindent textwidth=80 colorcolumn=81
"autocmd FileType python setlocal dictionary=/usr/local/share/nvim/runtime/syntax/python.vim
autocmd FileType python setlocal dictionary=/home/kakehi/bin/nvim0.9.2/usr/share/nvim/runtime/syntax/python.vim
syntax match pythonOperator "\(+\|=\|-\|^\|*\)"
syntax match pythonDelimiter "\(,\|.\|:\)"
syntax keyword pythonSpecialWord self
highlight link pythonSpecialWord Special
highlight link pythonDelimiter Special

let b:current_after_syntax = 'python'

" for R
autocmd FileType r setlocal cindent
autocmd FileType r setlocal smarttab smartindent textwidth=80
autocmd FileType r setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

