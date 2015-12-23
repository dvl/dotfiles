"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
set bomb
set binary
set ttyfast

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

"" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"" Visual Settings

syntax on
set ruler
set number

set mousemodel=popup
set t_Co=256
set background=dark
set guioptions=egmrti
set gfn=Source\ Code\ Pro\ 10

set incsearch
set ignorecase
set smartcase
set hlsearch

set nowrap

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

set laststatus=2
set showcmd
set showmode
