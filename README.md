# My dotfiles


## Missing dot
The config files are stored in git without the leading dot (period, full stop).
Just copy the file to the correct name.

## Setup neovim intialisation file
```bash
/Users/philratcliffe/.config/nvim/dotfiles
```

## Setup neovim plugins setup 
```bash
$ cp  plugins.vim ~/.configs/nvim/vim-plug
```

## Setup vim intialisation file
```bash
$ cp vimrc ~/.vimrc
```

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

### Trouble shooting
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

## git
To get the latest git-completion.bash

```bash
$ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
```

To setup gitconfig
```bash
$ cp gitconfig ~/.gitconfig
```


```bash
$cp dotfiles/tmux.conf ~/.tmux.conf
```

```bash
$cp dotfiles/cdpath ~/.cdpath etc.
```
## bashrc

### mac OS
With iTerm2 and Mac OS, .bashrc is not sourced. However, the
~/.bash_profile is sourced. So a source .bashrc entry in ~/.bash_profile
does the job.

### Debian 9
I needed to install vim as the default vim couldn't handle Vundle. Also I 
needed to run "sudo apt install vim-python-jedi"


