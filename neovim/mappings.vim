" Shift screen up and down
noremap <S-E> <C-E>
noremap <S-Q> <C-Y>

" Terminal Clearing
tmap <Esc> <C-\><C-n>

" Clear highlighted text
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Reload Vim
map <A-r> :so /run/media/spaceraiders/External Storage/dotfiles/neovim/init.vim<CR>

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
