set nocompatible              " be iMproved, required

if has("win32") || has("win64")
	" Windows options here
	    if empty(glob('~/vimfiles/autoload/plug.vim'))
            silent !curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
        endif

        call plug#begin('~/vimfiles/bundle')
else
    if has("unix")
		" *nix options here
		if empty(glob('~/.vim/autoload/plug.vim'))
            silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
        endif
		call plug#begin('~/.vim/bundle')
	endif
endif

Plug 'crusoexia/vim-monokai'
Plug 'itchyny/lightline.vim'

call plug#end()

" Tabs for makefiles, 2 spaces for YAML
filetype plugin on 

" syntax highlighting
syntax on
colorscheme monokai


" spaces > tabs
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" Gvim
set guifont="DejaVu Sans Mono":h11 " Set font for gvim

" Pretty colour scheme
set background=dark " Set background 

" Work with conemu
if !has('gui_running')
  set t_Co=256
endif


"DirectX
if has("directx") && $VIM_USE_DIRECTX != '0'
    set renderoptions=type:directx,taamode:1
endif

set encoding=utf-8 " better than latin1
setglobal fileencoding=utf-8
set number
