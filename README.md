# dotfiles
All of my dotfiles. 

## Programs
So far, this contains dotfiles for..
- NeoVim
- Bash

## Information
This collection of configuration files is very personal, and thus some parts of
it requires certain folders that exist on your system. In my case, I store most
of my files on an external hard-drive. Thus, quite a few of my aliases use the
environment variables that I have defined exclusively for that. However, I have
tried to make sure that in the case of applications like `NeoVim`, that is is as
usable to the average person as I can make it. It does still require a bit of
setup on your end, however.
<br/>
In `./bash/.bashrc` file, you can edit the `MAIN` environment variable. This acts
as the root of all of your files. In the case of `NeoVim`, it should attempt to
pull files from the folder stored in the `DOTFILES` environment variable, but
if it is not defined, then it will try to pull them from `~/.config/nvim`
