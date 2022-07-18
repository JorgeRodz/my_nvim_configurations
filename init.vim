:set autoindent      "New lines inherit the indentation of previous lines.
:set clipboard=unnamed "To enable the usage of the systema clipboard"
:set number          "To set number lines on left side"
:set mouse=a         "To use the mouse in neovim
:set relativenumber  "To set left numbers relative to the line we are in"
:set smarttab		     "Convert tabs to spaces.
:set shiftwidth=2    "To make 2 spaces as Tab
:set softtabstop=2   "To make 2 spaces as Tab
:set tabstop=2		   "To make 2 spaces as Tab
:set expandtab       "To replace tabs with whitespaces"
:set encoding=utf-8

"————————————————————————————————————— Plugins —————————————————————————————————————"
call plug#begin()

	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'projekt0n/github-nvim-theme'
	Plug 'preservim/nerdtree'

call plug#end()
"————————————————————————————————————— Plugins —————————————————————————————————————"


"—————————————— github-nvim-theme configuration ————————————————"
" Example config in VimScript
" NOTE: Configuration needs to be set BEFORE loading the color scheme with `colorscheme` command
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme github_dark_default
