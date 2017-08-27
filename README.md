# My dotfiles

## Overview
This repo is where I keep my dotfiles.

NOTE: if problems with vim, you may need to run:
'''bash 
$ sudo apt-get install ruby-dev
'''

If get E319 error when run vim try installing these:
'''bash
$ sudo apt-get install vim-gui-common
'''
'''bash
apt-get install vim-runtime
'''


Vundle
    Use vundle to install plugins
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    open vim and type :PluginInstall

    Command-T needs compiling:
    cd ~/.vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb
    make

Missing dot
===========
Note most of the config files are actually stored in git without the leading dot (period, full stop).
Just copy the file to the correct name. For example, cp dotfiles/tmux.conf ~/.tmux.conf 
and cp cdpath ~/.cdpath
