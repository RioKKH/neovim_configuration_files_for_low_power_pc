call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install()}}
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes', {'airline_theme': 'onedark'}
Plug 'ryanoasis/vim-devicons'
Plug 'shougo/vimproc.vim', {'do': 'make'}
Plug 'shougo/neosnippet.vim' 
Plug 'shougo/neosnippet-snippets'
Plug 'shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
" Plug 'jsfaint/gen_tags.vim', {'for': ['c', 'cpp', 'cuda']}
Plug 'thinca/vim-quickrun'
" Plug 'vim-jp/cpp-vim', {'for': ['c', 'cpp', 'cuda']} 
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp', 'cuda']}
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'uiiaoo/java-syntax.vim', {'for': 'java'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
call plug#end()

runtime! options.rc.vim
runtime! keymap.rc.vim
runtime! personal.rc.vim
runtime! private.rc.vim
runtime! coc.rc.vim

" 自動コマンドを利用して、ファイル保存時に自動で読み込むようにする
autocmd BufWRitePost ~/.config/nvim/personal.rc.vim source %
