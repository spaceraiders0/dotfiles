" =======================================================================================================
"
"	        /$$           /$$   /$$                    /$$              
"	       |__/          |__/  | $$                   |__/              
"	        /$$ /$$$$$$$  /$$ /$$$$$$       /$$    /$$ /$$ /$$$$$$/$$$$ 
"	       | $$| $$__  $$| $$|_  $$_/      |  $$  /$$/| $$| $$_  $$_  $$
"	       | $$| $$  \ $$| $$  | $$         \  $$/$$/ | $$| $$ \ $$ \ $$
"	       | $$| $$  | $$| $$  | $$ /$$      \  $$$/  | $$| $$ | $$ | $$
"	       | $$| $$  | $$| $$  |  $$$$/ /$$   \  $/   | $$| $$ | $$ | $$
"	       |__/|__/  |__/|__/   \___/  |__/    \_/    |__/|__/ |__/ |__/
"
"   
"          	            https://www.github.com/spaceraiders0
"          	        https://www.github.com/spaceraiders0/dotfiles
"
"        	   The main configuration file for NeoVim. This file deals
"        	   specifically with the initialization of an instance of
"        	   NeoVim. This is mainly just the Plugin Manager. It will
"        	   also source all the other files. This configuration of
"        	   NeoVim is meant to be modular, so each file has it's
"        	   own purpose.
"
" =======================================================================================================

" This auto-installs VimPlug if it is not already installed. From this Wiki page:
" https://github.com/junegunn/vim-plug/issues/739
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax on
filetype plugin on

function CopyFilepath()
    redir @+ | echo expand("%:p") | redir END
endfunction

" Determines the location of dotfiles.
if $DOTFILES == ""
    let rcpath = "~/.config/nvim"
else
    let rcpath = "$DOTFILES/neovim"
endif

" Sources modules
exec 'source' rcpath . '/settings.vim'
exec 'source' rcpath . '/plugins.vim'
exec 'source' rcpath . '/themes.vim'
exec 'source' rcpath . '/mappings.vim'
