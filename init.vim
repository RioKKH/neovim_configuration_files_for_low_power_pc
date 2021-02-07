if !exists('g:vscode')

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kakehi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kakehi/.cache/dein/')
  call dein#begin('/home/kakehi/.cache/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/kakehi/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy' : 0})
  call dein#load_toml('~/.config/nvim/deinlazy.toml', {'lazy' : 1})
  " call dein#load_toml('~/.config/nvim/deinft.toml')
  

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

runtime! options.rc.vim
runtime! keymap.rc.vim
runtime! personal.rc.vim
runtime! private.rc.vim

endif
