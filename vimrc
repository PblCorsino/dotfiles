" VIM Configuration - Pablo Corsino
" Cancel the compatibility with Vi. Esential if you want
" to enjoy the features of Vim
set nocompatible

" Activate pathogen
"call pathogen#infect()

" --- Vundle setup ---
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" -- End of Vundle setup ---

" -- Display
set title		" Update the title of your window or your terminal
set number		" Display line numbers
set ruler		" Display cursor position
set wrap		" Wrap lines when they are too long

set scrolloff=3		" Display at least 3 lines around your cursor
			" (for scrolling)

set guioptions=T	" Enable the toolbar

" -- Search
set ignorecase		" Ignore case when searching
set smartcase		" If there is an uppercase in your search term
			" search case sensitive again
set incsearch		" Highlight search results when typing
set hlsearch		" Highlight search results

" -- Beep
set visualbell		" Prevent Vim from beeping
set noerrorbells	" Prevent Vim from beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Enable syntax highlighting
syntax enable

" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Use the dark version of Solarized
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" Use DejaVu Sans Mono font
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

" Disable the directional cursor keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Get rid of esc key
imap ii <Esc>

" Activate the NERDTree when launching Vim
autocmd vimenter * NERDTree

