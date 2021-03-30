" Stores color information for my Vim instance.
    " This will make the background transparent
    "hi Normal cterm=NONE ctermfg=15 ctermbg=7 gui=NONE guifg=None guibg=grey20
    hi Normal guibg=NONE ctermbg=NONE
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    " This fixes issues with scrolloff using the terminal background
    set t_ut= 
    set t_Co=256

    colorscheme gruvbox

    " This fixes up colors, allowing for more colors to be shown.
    " From https://vi.stackexchange.com/questions/13458/make-vim-show-all-the-colors
    set termguicolors

    " Correct RGB escape codes for vim inside tmux
    if !has('nvim') && $TERM ==# 'screen-256color'
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif

    autocmd VimEnter * :AirlineTheme monochrome
    set background=dark
