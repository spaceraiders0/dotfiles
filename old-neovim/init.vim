" coc-pairs
" coc-python
" coc-discord-rpc
" coc-clangd
" sudo apt install xsel for clipboard plugin
" pip3 install jedi (for nice python autocompletion
" flake8 and or pylint

" Allows for CTRL-S and CTRL-Q to reach vim instead of being captured by
" a terminal emulator. From: 
" https://stackoverflow.com/questions/7883803/why-doesnt-map-c-q-q-cr-work-in-vim
silent !stty -ixon > /dev/null 2>/dev/null

" This auto-installs vimplug to the necessary directory. From this Wiki page:
" https://github.com/junegunn/vim-plug/issues/739
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

function CopyFilepath()
    redir @+ | echo expand("%:p") | redir END
endfunction

" General Editing Configuration set guicursor=a:ver25 filetype plugin on syntax on 
    set nocompatible
    set mouse=a
    set shell=/usr/bin/bash
    set colorcolumn=80
    set modifiable
    set laststatus=2
    set relativenumber
    set virtualedit=block
    set cursorline
    set backspace=start,eol,indent
    set scrolloff=5
    set expandtab
    set encoding=UTF-8
    set ttyfast
    set number
    set nowrap
    set ruler
    set title
    set foldignore=
    set foldmethod=indent
    set path+=**

" Text Formatting Settings
    set smartindent
    set softtabstop=4
    set shiftwidth=4
    set tabstop=4
    set autoindent

" Plugins
    call plug#begin('~/.vim/plugged/')

    " Themes
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'mhartington/oceanic-next'
    Plug 'nightsense/strawberry'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'vimpostor/vim-tpipeline'
    Plug 'joshdick/onedark.vim'
    Plug 'franbach/miramare'
    Plug 'pgavlin/pulumi.vim'
    Plug 'arzg/vim-colors-xcode'
    Plug 'humanoid-colors/vim-humanoid-colorscheme'
    Plug 'jcherven/jummidark.vim'
    Plug 'aonemd/kuroi.vim'
    Plug 'junegunn/seoul256.vim'
    Plug 'w0ng/vim-hybrid'
    Plug 'jonathanfilip/vim-lucius'
    Plug 'nanotech/jellybeans.vim'
    Plug 'morhetz/gruvbox'
    Plug 'liuchengxu/space-vim-theme'
    Plug 'tyrannicaltoucan/vim-deep-space'
    Plug 'sainnhe/forest-night'

    " Plugins
    :Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'Yggdroot/indentLine'
    Plug 'junegunn/fzf.vim'
    Plug 'chrisbra/Colorizer'
    Plug 'xolox/vim-colorscheme-switcher'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'vim-airline/vim-airline-themes'
    Plug 'machakann/vim-highlightedyank'
    Plug 'vim-airline/vim-airline'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-eunuch'
    Plug 'vimwiki/vimwiki'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-fugitive' 
    Plug 'xolox/vim-misc'
    Plug 'scrooloose/nerdtree'
    Plug 'wesQ3/vim-windowswap'
    Plug 'dylanaraps/wal.vim'
    Plug 'ryanoasis/vim-devicons'

    call plug#end()

" Keybindings / Mappings Configuration
    noremap J <C-E>
    noremap K <C-Y>
    tmap <Esc> <C-\><C-n>
    map <C-S> :w<CR>
    imap <C-Backspace> <C-W>
    nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
    map <A-r> :so /run/media/spaceraiders/External Storage/dotfiles/neovim/init.vim<CR>
    map Q <NOP>

    " Tab motions
    map tq :bd!<CR>
    map tj :tabp<CR>
    map tk :tabn<CR>
    map tn :tabnew<CR>
    map tt :tabnew<CR>:terminal<CR>
    map to :tabnew<CR>:browse old<CR>

    " File motions
    map fc :call CopyFilepath()<CR> 
    map ff :Files .<CR> 
    map fr :e<CR>
    
    " Window motions
    map ws :vnew<CR>
    map wv :new<CR>
    map wq :wq<CR>
    nmap wj <C-W><C-J>
    nmap wk <C-W><C-K>
    nmap wl <C-W><C-L>
    nmap wh <C-W><C-H>
    nmap <silent> wm :call WindowSwap#EasyWindowSwap()<CR>
    map <C-k> :resize +5<CR>
    map <C-j> :resize -5<CR>
    map <C-h> :vertical resize -5<CR>
    map <C-l> :vertical resize +5<CR>

    " Buffer Motions
    nmap <S-Q> :bprevious<CR>
    nmap <S-E> :bnext<CR>
    " nmap bn :enew<CR>
    " nmap bq :bd!<CR>

    " Other motions 
    map rt :set norelativenumber!<CR>
    
" Airline Configuration
    " Basically all of this from this Vi/Vim post:
    " https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin
    
    let g:airline#extensions#tabline#enabled = 1  
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#ale#enabled = 1
    let g:airline_detect_whitespace=0
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline_section_warning=''
    let base16colorspace = 256

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " Unicode symbols (Backup if there is no patched font)
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    " Airline symbols (Actually needed)
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''

    let g:airline_theme='gruvbox'
    let g:airline#extensions#tabline#formatter = 'short_path'

" Terminal Configuration
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

    
" NERDTree
    map <C-N> :NERDTreeToggle %<CR> " Toggle in file's directory
    map <C-M> :NERDTreeToggle<CR>   " Toggle in the last directory
    let NERDTreeShowHidden=1

" Indent Lines
    let g:indentLine_char = '┊'
    let g:indentLine_first_char = '┊'
    let g:indentLine_leadingSpaceChar = '·'
    let g:indentLine_showFirstIndentLevel = 1
    autocmd VimEnter * LeadingSpaceEnable

" Dotfile Editing commands.
    command! Nrc edit $DOTFILES/neovim/init.vim
    command! Brc edit $DOTFILES/bash/.bashrc
    command! Qrc edit ~/.config/qtile/config.py

" Other custom commands
    command! Vhelp vert help " Open a help window in a vertical split.

" Load up spell checker for markdown files and plaintext files
au BufReadPost,BufNewFile *.md,*.txt setlocal spell | setlocal syntax=markdown

" Load color information
    let rcpath = '/run/media/spaceraiders/External Storage/dotfiles/neovim' 
    exec 'source' rcpath . '/vim-colors.vim'
    autocmd VimEnter * ColorHighlight

