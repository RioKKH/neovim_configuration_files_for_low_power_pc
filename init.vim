call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install()}}
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes', {'airline_theme': 'onedark'}
Plug 'shougo/vimproc.vim', {'do': 'make'}
Plug 'shougo/neosnippet.vim' 
Plug 'shougo/neosnippet-snippets'
Plug 'shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
Plug 'jsfaint/gen_tags.vim', {'for': ['c', 'cpp', 'cuda']}
Plug 'thinca/vim-quickrun'
Plug 'vim-jp/cpp-vim', {'for': ['c', 'cpp', 'cuda']} 
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'uiiaoo/java-syntax.vim', {'for': 'java'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
call plug#end()

runtime! options.rc.vim
runtime! keymap.rc.vim
runtime! personal.rc.vim
runtime! private.rc.vim

