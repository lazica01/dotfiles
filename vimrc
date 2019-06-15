set relativenumber
set nocompatible
"let mapleader=';'
syntax on
set encoding=utf-8
call plug#begin('~/.vim/plugged')
	
call plug#end()

inoremap jj <Esc>

"requirex vim-x11(AUR)

vnoremap <C-c> "+y
map <C-p> "+P
