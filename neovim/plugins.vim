" =======================================================================================================
"                  /$$                     /$$                                /$$              
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
" Plug 'vim-airline/vim-airline'
" Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
Plug 'ryanoasis/vim-devicons'
Plug 'bfrg/vim-cpp-modern'
Plug 'vim-python/python-syntax'
" Plug 'akinsho/nvim-bufferline.lua'
" Plug 'liuchengxu/vista.vim'
" Plug 'unkiwii/vim-nerdtree-sync'

" File Management
" Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-eunuch'

" Autocompletion
Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Themes
Plug 'sjl/badwolf'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'Rigellute/shades-of-purple.vim'
"Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sainnhe/sonokai'
Plug 'eemed/sitruuna.vim'
Plug 'haishanh/night-owl.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'cormacrelf/vim-colors-github'

call plug#end()

" Colorizer configuration
autocmd VimEnter * ColorHighlight

" Language pack configuration
let g:python_highlight_all = 1

" CPP & C language pack
let g:cpp_member_highlight = 1

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
" " let g:airline#extensions#tabline#formatter = 'unique_tail'
" " let g:airline_powerline_fonts = 1
" " let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#enabled = 0

" autocmd VimEnter * silent AirlineToggleWhitespace

" Indent Lines configuration
" let g:indentLine_char = '┊'               
" let g:indentLine_first_char = '┊'         
" let g:indentLine_leadingSpaceChar = '·'   
" let g:indentLine_showFirstIndentLevel = 0
" autocmd VimEnter * LeadingSpaceEnable     

" Vista configuration
" let g:vista_sidebar_position="vertical topleft"

" NERDTree Configuration
let NERDTreeShowHidden=1                                       
let NERDTreeWinPos="right"

lua << EOF
require'lspconfig'.ccls.setup{on_attach=require'completion'.on_attach}
--require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.jedi_language_server.setup{on_attach=require'completion'.on_attach}
-- require'bufferline'.setup{
--     options = {
--         separator_style="slant",
--         enforce_regular_tabs=true,
--     }
-- }
EOF
