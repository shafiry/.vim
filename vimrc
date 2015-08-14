filetype plugin on
filetype indent on
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-repeat'
Plug 'gabesoft/vim-ags'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

call plug#end()


" do not make vim compatible with vi.
set nocompatible

" number the lines.
set number
set relativenumber

" keep cursor in the middle of the screen while scrolling up and down.
set scrolloff=999

" show auto complete menus.
set wildmenu

" Make wildmenu behave like bash completion. Finding commands are so easy now.
set wildmode=list:longest

" run the Bash script by pressing F6 without leaving VIM.
map <f6> :w <CR>:!bash % <CR>

" mouse events
set mouse=a

" turn on syntax hightlighting.
set syntax=on

" put title at the top of the screen
set title

" Needs comments
set shiftwidth=2
set softtabstop=2
set autoindent 
set expandtab
syntax on
set clipboard=unnamed
set backspace=indent,eol,start

" syntastic things
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_scss_checkers      = ['scss_lint']
let g:syntastic_ruby_checkers      = ['rubocop']
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1      " update the location list when running the syntax checkers
let g:syntastic_auto_loc_list = 0                " don't display the error list at the bottom
