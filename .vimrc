set shell=/bin/bash

set termguicolors

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'wesQ3/vim-windowswap'
Plugin 'itchyny/lightline.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/TagHighlight'
Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'KeitaNakamura/neodark.vim'

call vundle#end()
filetype plugin indent on

let mapleader="§"

set noswapfile
colorscheme neodark
let g:neodark#terminal_transparent = 1
" let g:neodark#solid_vertsplit = 1
let g:lightline = {
    \ 'active' : {
    \   'left' : [['mode', 'paste'], ['fugitive'], ['readonly', 'filename', 'tagbar']],
    \   'right' : [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype']]
    \ },
    \ 'component' : {
    \   'tagbar' : '%{tagbar#currenttag("[%s]", "")}',
    \   'fugitive' : ' %{fugitive#head()}'
    \ },
    \ 'component_function' : {
    \   'filename' : 'LightlineFilename',
    \ }
    \ }

function! LightlineFilename()
    let l:color = neodark#get_color('ErrorMsg', 'fg')
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' +' : ''
    return filename . modified
endfunction

let g:lightline.colorscheme = 'neodark'
set nu
set smartindent
set noshowmode

au BufReadPost,BufNewFile,BufEnter *.{c,cpp,h,javascript,java,js} call CSyntaxAfter()

set ruler
set showcmd
set mouse=a
set ttymouse=sgr
set showmode
set backspace=2

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

set statusline+=%#warninmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

hi SpellCap ctermbg=208 ctermfg=16
hi SpellBad ctermbg=9 ctermfg=16

