" =======================================================================================================
"                 /$$                     /$$                                /$$              
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
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
Plug 'ryanoasis/vim-devicons'
Plug 'wesQ3/vim-windowswap'

" File Management
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'

" Autocompletion
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-pyclang'
Plug 'roxma/nvim-yarp'
Plug 'davidhalter/jedi-vim'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/float-preview.nvim'

" Themes
Plug 'sjl/badwolf'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Colorizer configuration
autocmd VimEnter * ColorHighlight

" NCM2 and NCM2 extension configuration
autocmd BufEnter * call ncm2#enable_for_buffer()
let g:ncm2_pyclang#library_path = '/usr/lib/llvm-5.0/lib'
let g:float_preview#docked = 0

" Airline configuration
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

autocmd VimEnter * silent AirlineToggleWhitespace

" Indent Lines configuration
let g:indentLine_char = '┊'               
let g:indentLine_first_char = '┊'         
let g:indentLine_leadingSpaceChar = '·'   
let g:indentLine_showFirstIndentLevel = 1 
autocmd VimEnter * LeadingSpaceEnable     

" NERDTree Configuration
map <C-N> :NERDTreeToggle %<CR> " Toggle in file's directory   
map <C-M> :NERDTreeToggle<CR>   " Toggle in the last directory 
let NERDTreeShowHidden=1                                       

