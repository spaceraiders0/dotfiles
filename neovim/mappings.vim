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
noremap <S-E> <C-E>
noremap <S-Q> <C-Y>

" Terminal Clearing
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
map tj :tabp<CR>
map tk :tabn<CR>
map tn :tabnew<CR>
map tt :tabnew<CR>:terminal<CR>

" File management
map fc :call CopyFilepath()<CR>  
map ff :Files .<CR>              
map fr :e<CR>                    

" Window / Pane management
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

" Buffer management
nmap <S-Q> :bprevious<CR>
nmap <S-E> :bnext<CR>
