"           ██
"          ░░
"  ██    ██ ██ ██████████  ██████  █████
" ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
" ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"  ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"   ░░██   ░██ ███ ░██ ░██░███   ░░█████
"    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░
"
"  ▓▓▓▓▓▓▓▓▓▓
" ░▓ author ▓ xero <x@xero.nu>
" ░▓ code   ▓ http://code.xero.nu/dotfiles
" ░▓ mirror ▓ http://git.io/.files
" ░▓▓▓▓▓▓▓▓▓▓
" ░░░░░░░░░░
"
" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set nocompatible

" paste without auto indentation
set paste

" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo
set noswapfile

" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" case insensitive search
set ignorecase
set smartcase

" the /g flag on :s substitutions by default
set gdefault

" make backspace behave in a sane manner
set backspace=indent,eol,start

" searching
set hlsearch
set incsearch

" use indents of 4 spaces
set shiftwidth=2

" tabs are spaces, not tabs
set expandtab

" an indentation every four columns
set tabstop=2

" let backspace delete indent
set softtabstop=2

" remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

let mapleader=","

vnoremap <silent> <leader>y :w !xsel -i -b<CR>
nnoremap <silent> <leader>y V:w !xsel -i -b<CR>
nnoremap <silent> <leader>p :silent :r !xsel -o -b<CR>
nnoremap <silent> <Leader>e :Explore<CR>

" ┏━╸┏━┓┏┳┓┏┳┓┏━┓┏┓╻╺┳┓┏━┓
" ┃  ┃ ┃┃┃┃┃┃┃┣━┫┃┗┫ ┃┃┗━┓
" ┗━╸┗━┛╹ ╹╹ ╹╹ ╹╹ ╹╺┻┛┗━┛

" make ; work like : for commands (lazy shifting)
nnoremap ; :

" json pretty print
command J :%!python -mjson.tool

" remove trailing white space
command Nows :%s/\s\+$//

" remove blank lines
command Nobl :g/^\s*$/d

" toggle spellcheck
command Spell :setlocal spell! spell?

" ╻┏┓╻╺┳╸┏━╸┏━┓┏━╸┏━┓┏━╸┏━╸
" ┃┃┗┫ ┃ ┣╸ ┣┳┛┣╸ ┣━┫┃  ┣╸
" ╹╹ ╹ ╹ ┗━╸╹┗╸╹  ╹ ╹┗━╸┗━╸

" show matching brackets/parenthesis
set showmatch

" disable startup message
set shortmess+=I

" syntax highlighting and colors
set t_Co=256
set cursorline
syntax on
colorscheme molokai
filetype off

" stop unnecessary rendering
" set lazyredraw

" show line numbers
set number

" no line wrapping
set nowrap

" no folding
set foldlevel=99
set foldminlines=99

" don't wrap long lines
set nowrap

" highlight column
" set cursorcolumn

" Always show the statusline
set laststatus=2

" Buffer navigation
nnoremap <C-Right> :bnext<CR>
nnoremap <C-Left>  :bprevious<CR>

inoremap <C-Right> <Esc>:bnext<CR><Insert>
inoremap <C-Left>  <Esc>:bprevious<CR><Insert>

nnoremap <C-t>     :enew<CR>
nnoremap <C-w>     :bd<CR>

inoremap <C-t>     <Esc>:enew<CR>
inoremap <C-w>     <Esc>:bd<CR>

" Window navigation
noremap <C-h> :wincmd h<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-k> :wincmd k<CR>
noremap <C-l> :wincmd l<CR>

" enable file type detection and do language-dependent indenting
if has("autocmd")
  filetype on
  filetype indent on
  filetype plugin on
endif

" ┏━┓╻  ╻ ╻┏━╸╻┏┓╻   ┏━┓╺┳╸╻ ╻┏━╸┏━╸
" ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫   ┗━┓ ┃ ┃ ┃┣╸ ┣╸
" ╹  ┗━╸┗━┛┗━┛╹╹ ╹   ┗━┛ ╹ ┗━┛╹  ╹

if 1  " boolean for plugin loading
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'gmarik/Vundle.vim'

  " My plugins

  Plugin 'airblade/vim-gitgutter'
  Plugin 'bling/vim-airline'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'jmcantrell/vim-virtualenv'
  Plugin 'majutsushi/tagbar'
  Plugin 'mattn/emmet-vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'scrooloose/syntastic'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-fugitive'
  Plugin 'Yggdroot/indentLine'
  Plugin 'Valloric/YouCompleteMe'

  call vundle#end()
  filetype plugin indent on

  " vim-airline
  let g:airline_powerline_fonts = 1
  
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'

  " tagbar
  nmap <F8> :TagbarToggle<CR>  " F8 toogles TabBar

  " emmet-vim
  let g:user_emmet_leader_key = '<C-E>'

  " nerdtree
  map <F2> :NERDTreeTabsToggle<CR>
endif
