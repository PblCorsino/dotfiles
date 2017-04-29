" VIM Configuration - Pablo Corsino
" Cancel the compatibility with Vi. Esential if you want
" to enjoy the features of Vim
set nocompatible

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
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'chiel92/vim-autoformat'
Plugin 'bling/vim-airline'
Plugin 'shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'lervag/vimtex'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-rhubarb'
Plugin 'evidens/vim-twig'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" -- End of Vundle setup ---

" -- Display
set title		" Update the title of your window or your terminal
set number		" Display line numbers
set ruler		" Display cursor position
"set wrap		" Wrap lines when they are too long
set nowrap
" Define tabs as 3 spaces
set tabstop=3
set shiftwidth=3

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
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

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

" Define the <leader> key
let mapleader = ","

" Define the <localleader> key
let maplocalleader = ";"

" Activate the NERDTree when launching Vim
autocmd vimenter * NERDTree

" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
nmap <leader>j mA:Ack<space>
" Add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>Ja mA:Ack "<C-r>=expand("<cWORD>")<cr>"

" Key combination for the ctrlp plugin
let g:ctrlp_map = '<leader>c'

" Autoformat key
noremap <F3> :Autoformat<CR>

" Auto format on save
au BufWrite * :Autoformat

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Change the Latex engine
let g:tex_flavor = 'latex'

" Spell checker
nmap <silent> <leader>s :set spell!<CR>
set spelllang=es_es

" NERDTree tabs
let g:nerdtree_tabs_open_on_console_startup = 1
nmap <C-l> :tabn<CR>
nmap <C-h> :tabp<CR>

