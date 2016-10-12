set shell=/bin/bash

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'wesQ3/vim-windowswap'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/TagHighlight'
Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'marijnh/tern_for_vim'

call vundle#end()
filetype plugin indent on

set noswapfile
colorscheme molokai
set background=dark
set nu
set smartindent

au BufReadPost,BufNewFile,BufEnter *.{c,cpp,h,javascript,java,js} call CSyntaxAfter()

au BufReadPost *.twig colorscheme koehler 
au BufReadPost *.css colorscheme molokai 
au BufReadPost *.js colorscheme monokai
au BufReadPost *.py colorscheme molokai
au BufReadPost *.html colorscheme molokai
au BufReadPost *.java colorscheme molokai
au BufReadPost *.php colorscheme molokai

set ruler
set showcmd
set mouse=a
set ttymouse=sgr
set showmode

set list
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\

set number
set numberwidth=3
set showtabline=2
set hlsearch
set cursorline
set splitbelow
set splitright
set shiftwidth=4
set expandtab
set tabstop=4

set nocompatible
syntax on
filetype on
filetype plugin on

set ttyfast
set visualbell
set listchars=tab:\|\ ,trail:.
set switchbuf=useopen
set whichwrap=b,s,<,>,[,]
set laststatus=2
set colorcolumn=120

let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

set statusline+=%#warninmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

hi SpellCap ctermbg=208 ctermfg=16
hi SpellBad ctermbg=9 ctermfg=16

hi link SyntasticErrorLine SpellBad
hi link SyntasticWarningLine SpellCap

let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_ignore_files = [ 'gulpfile.js' ]

