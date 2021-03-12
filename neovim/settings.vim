" =======================================================================================================
"
"                        /$$     /$$     /$$                                          /$$              
"                       | $$    | $$    |__/                                         |__/              
"   /$$$$$$$  /$$$$$$  /$$$$$$ /$$$$$$   /$$ /$$$$$$$   /$$$$$$   /$$$$$$$ /$$    /$$ /$$ /$$$$$$/$$$$ 
"  /$$_____/ /$$__  $$|_  $$_/|_  $$_/  | $$| $$__  $$ /$$__  $$ /$$_____/|  $$  /$$/| $$| $$_  $$_  $$
" |  $$$$$$ | $$$$$$$$  | $$    | $$    | $$| $$  \ $$| $$  \ $$|  $$$$$$  \  $$/$$/ | $$| $$ \ $$ \ $$
"  \____  $$| $$_____/  | $$ /$$| $$ /$$| $$| $$  | $$| $$  | $$ \____  $$  \  $$$/  | $$| $$ | $$ | $$
"  /$$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$/| $$| $$  | $$|  $$$$$$$ /$$$$$$$//$$\  $/   | $$| $$ | $$ | $$
" |_______/  \_______/   \___/   \___/  |__/|__/  |__/ \____  $$|_______/|__/ \_/    |__/|__/ |__/ |__/
"                                                      /$$  \ $$                                       
"                                                     |  $$$$$$/                                       
"                                                      \______/                                        
"				
"				            https://www.github.com/spaceraiders0
"          	            https://www.github.com/spaceraiders0/dotfiles
"
"		
"			           This file deals with editing settings, like line
"			           numbers, folding, title, etc.
"
" =======================================================================================================

" Editing settings
set nowrap
set expandtab
set cursorline
set nocompatible
set relativenumber
set laststatus=2
set shell=/usr/bin/bash
set scrolloff=5
set foldignore=
set foldmethod=indent
set colorcolumn=80
set virtualedit=block
set completeopt=noinsert,menuone,noselect

" Text formatting settings
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent

" Terminal settings
let g:terminal_color_0  = '#2e3436'     
let g:terminal_color_1  = '#cc0000'     
let g:terminal_color_2  = '#4e9a06'     
let g:terminal_color_3  = '#c4a000'     
let g:terminal_color_4  = '#3465a4'     
let g:terminal_color_5  = '#75507b'     
let g:terminal_color_6  = '#0b939b'     
let g:terminal_color_7  = '#d3d7cf'     
let g:terminal_color_8  = '#555753'     
let g:terminal_color_9  = '#ef2929'     
let g:terminal_color_10 = '#8ae234'     
let g:terminal_color_11 = '#fce94f'     
let g:terminal_color_12 = '#729fcf'     
let g:terminal_color_13 = '#ad7fa8'     
let g:terminal_color_14 = '#00f5e9'     
let g:terminal_color_15 = '#eeeeec'     

autocmd TermOpen * setlocal scrolloff=0 

" Quick-access dotfile edits.
if $DOTFILES != ""
    command! Nrc edit $DOTFILES/neovim/init.vim 
    command! Brc edit $DOTFILES/bash/.bashrc    
    command! Qrc edit ~/.config/qtile/config.py 
else
    command! Nrc edit ~/.config/nvim/init.vim 
    command! Brc edit ~/.bashrc    
    command! Qrc edit ~/.config/qtile/config.py 
endif

" Load up spell checker for markdown files and plaintext files
au BufReadPost,BufNewFile *.md,*.txt setlocal spell | setlocal syntax=markdown

