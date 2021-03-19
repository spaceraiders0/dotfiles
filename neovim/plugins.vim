" ======================================================================================================= /$$                     /$$                                /$$              
"                 | $$                    |__/                               |__/              
"         /$$$$$$ | $$ /$$   /$$  /$$$$$$  /$$ /$$$$$$$   /$$$$$$$ /$$    /$$ /$$ /$$$$$$/$$$$ 
"        /$$__  $$| $$| $$  | $$ /$$__  $$| $$| $$__  $$ /$$_____/|  $$  /$$/| $$| $$_  $$_  $$
"       | $$  \ $$| $$| $$  | $$| $$  \ $$| $$| $$  \ $$|  $$$$$$  \  $$/$$/ | $$| $$ \ $$ \ $$
"       | $$  | $$| $$| $$  | $$| $$  | $$| $$| $$  | $$ \____  $$  \  $$$/  | $$| $$ | $$ | $$
"       | $$$$$$$/| $$|  $$$$$$/|  $$$$$$$| $$| $$  | $$ /$$$$$$$//$$\  $/   | $$| $$ | $$ | $$
"       | $$____/ |__/ \______/  \____  $$|__/|__/  |__/|_______/|__/ \_/    |__/|__/ |__/ |__/
"       | $$                     /$$  \ $$                                                     
"       | $$                    |  $$$$$$/                                                     
"       |__/                     \______/                                                      
"
"            	             https://www.github.com/spaceraiders0
"            	        https://www.github.com/spaceraiders0/dotfiles
"  
"            	       This file deals with plugin, and theme installation
"            	       as well as the configuration of plugins.
"
" =======================================================================================================

call plug#begin('~/.vim/plugged')

" Visual / Quality of Life
Plug 'machakann/vim-highlightedyank'
"Plug 'vim-airline/vim-airline'
" Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-jp/vim-cpp'
Plug 'vim-python/python-syntax'

" File Management
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Themes
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
"Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'
Plug 'sainnhe/sonokai'
Plug 'eemed/sitruuna.vim'
Plug 'haishanh/night-owl.vim'

call plug#end()

" Colorizer configuration
autocmd VimEnter * ColorHighlight

" Language pack configuration
let g:python_highlight_all = 1

" Airline configuration
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" 
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" 
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#show_buffers = 0

" autocmd VimEnter * silent AirlineToggleWhitespace

" Indent Lines configuration
" let g:indentLine_char = '┊'               
" let g:indentLine_first_char = '┊'         
" let g:indentLine_leadingSpaceChar = '·'   
" let g:indentLine_showFirstIndentLevel = 0
" autocmd VimEnter * LeadingSpaceEnable     

" NERDTree Configuration
map <C-N> :NERDTreeToggle %<CR> " Toggle in file's directory   
map <C-M> :NERDTreeToggle<CR>   " Toggle in the last directory 
let NERDTreeShowHidden=1                                       

