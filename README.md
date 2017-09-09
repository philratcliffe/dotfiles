# My dotfiles

## Overview
This repo is where I keep my dotfiles.

## Vim Plugins


Use vundle to install plugins

```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
open vim and type :PluginInstall

### Command-T
Commamd-T needs compiling:
```bash
$ cd ~/.vim/bundle/Command-T/ruby/command-t
$ ruby extconf.rb
$ make
 ```
The Command-T <leader> key is mapped to spacebar. So to start Command-T,
press spacebar then press t.
 
## Trouble shooting
NOTE: if you have problems with vim, you may need to run:
```bash 
$ sudo apt-get install ruby-dev
```

If get E319 error when run vim try installing these:
```bash
$ sudo apt-get install vim-gui-common
```
```bash
$ sudo apt-get install vim-runtime
```


## Missing dot
I have stored the config files in git without the leading dot (period, full stop).
Just copy the file to the correct name. For example, cp dotfiles/tmux.conf ~/.tmux.conf 
and cp dotfiles/cdpath ~/.cdpath etc.
