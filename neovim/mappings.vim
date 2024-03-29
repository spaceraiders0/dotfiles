" =======================================================================================================
"                                              /$$                                          /$$              
"                                             |__/                                         |__/              
"  /$$$$$$/$$$$   /$$$$$$   /$$$$$$   /$$$$$$  /$$ /$$$$$$$   /$$$$$$   /$$$$$$$ /$$    /$$ /$$ /$$$$$$/$$$$ 
" | $$_  $$_  $$ |____  $$ /$$__  $$ /$$__  $$| $$| $$__  $$ /$$__  $$ /$$_____/|  $$  /$$/| $$| $$_  $$_  $$
" | $$ \ $$ \ $$  /$$$$$$$| $$  \ $$| $$  \ $$| $$| $$  \ $$| $$  \ $$|  $$$$$$  \  $$/$$/ | $$| $$ \ $$ \ $$
" | $$ | $$ | $$ /$$__  $$| $$  | $$| $$  | $$| $$| $$  | $$| $$  | $$ \____  $$  \  $$$/  | $$| $$ | $$ | $$
" | $$ | $$ | $$|  $$$$$$$| $$$$$$$/| $$$$$$$/| $$| $$  | $$|  $$$$$$$ /$$$$$$$//$$\  $/   | $$| $$ | $$ | $$
" |__/ |__/ |__/ \_______/| $$____/ | $$____/ |__/|__/  |__/ \____  $$|_______/|__/ \_/    |__/|__/ |__/ |__/
"                         | $$      | $$                     /$$  \ $$                                       
"                         | $$      | $$                    |  $$$$$$/                                       
"                         |__/      |__/                     \______/                                        
"
"          	            https://www.github.com/spaceraiders0
"          	        https://www.github.com/spaceraiders0/dotfiles
"
"                 This file contains all (most) of the keybinds used
"                 by this NeoVim installation.
"
" =======================================================================================================

" Shift screen up and down
noremap J <C-E>
noremap K <C-Y>

" Terminal Leaving
tmap <Esc> <C-\><C-n>

" Clear highlighted text
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Reload Vim
if $DOTFILES != ""
    map <A-r> :so $DOTFILES/neovim/init.vim<CR>
else
    map <A-r> :so ~/.config/nvim/init.vim<CR>
endif

" Prevent EX mode from opening
map Q <NOP>

" Tab management
map tq :bd!<CR>
map tn :tabn<CR>
map tp :tabp<CR>
map tc :tabnew<CR>
map tt :tabnew<CR>:terminal<CR>

" File management
map fc :call CopyFilepath()<CR>  
map fr :e<CR>                    

" Buffer management
nmap zp :bprevious<CR>
nmap zn :bnext<CR>
nmap zt :terminal<CR>

" NERDTree
map <C-N> :NERDTreeToggle %<CR> " Toggle in file's directory   
map <C-M> :NERDTreeToggle<CR>   " Toggle in the last directory 

" Visa
map <C-O> :Vista!!<CR>

" C-Style block comments
let @c = "i/*�kb�kb�kb�kb*/kA @a"

" Quick-access dotfile edits.
if $DOTFILES != ""
    command! Nrc edit $DOTFILES/neovim/init.vim 
    command! Brc edit $DOTFILES/bash/.bashrc    
else
    command! Nrc edit ~/.config/nvim/init.vim 
    command! Brc edit ~/.bashrc    
endif

command! Qrc edit ~/.config/qtile/config.py 
command! Krc edit ~/.config/kitty/kitty.conf
autocmd TermOpen * set hidden
