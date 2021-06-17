
export HISTFILESIZE=999999999               # big big history
export HISTSIZE=999999999
export HISTFILE=~/.zsh_history



[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable vi mode
bindkey -v

export PROJECT_HOME=$HOME/projects
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# tmux auto complete
#source ~/tmux-complete.sh


# PATH for python
PATH=/usr/local/share/python:${PATH}
# for homebrewed bottles
PATH=/usr/local/bin:/usr/local/sbin:${PATH}
# for custom scripts
PATH=$HOME/bin:${PATH}

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

#export WORKON_HOME=~/virtual_envs
#source /usr/local/bin/virtualenvwrapper.sh
PROMPT='%~ %# '

#for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
#
autoload -Uz compinit && compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
