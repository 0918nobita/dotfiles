set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set clipboard&
set clipboard^=unnamedplus
set number
" set mouse=a
" set cursorline
" set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
inoremap jk <ESC>
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <ESC><ESC> :nohlsearch<CR><ESC>

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=/home/kodai/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin('/home/kodai/.cache/dein')
let s:toml_dir  = $HOME . '/.config/vim/dein'
let s:toml      = s:toml_dir . '/dein.toml'
let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
call dein#load_toml(s:toml,      {'lazy': 0})
call dein#load_toml(s:lazy_toml, {'lazy': 1})
call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

let g:airline_theme='angr'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
