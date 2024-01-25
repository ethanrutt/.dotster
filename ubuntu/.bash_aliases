# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto -n'
    alias fgrep='fgrep --color=auto -n'
    alias egrep='egrep --color=auto -n'
else
    alias grep='grep -n'
    alias egrep='egrep -n'
    alias fgrep='fgrep -n'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# dir traversal aliases
alias home='cd ~'
alias whome='cd /mnt/c/Users/skate'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# git aliases
alias gau='git add -u'
alias gcmt='git commit -m'
alias glg='git log'
alias gpsh='git push'
alias gpll='git pull'

# allow tmux to use all 256 colors
alias tmux="tmux -2"
alias tls='tmux ls'

alias q='exit'

# ls on cd
function cd {
    builtin cd "$@" && ll
}

# allow C-r fzf and C-t file search in current directory
if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then
    # note: I switch alt + c (M-c) to ctrl + f (C-f) to fzf cd in this file
    source /usr/share/doc/fzf/examples/key-bindings.bash
fi

# tmuxster and sf commands
if [ -f ~/.tmuxster.bash ]; then
    source ~/.tmuxster.bash
fi

# 438 bash_aliases
export MY_INSTALL_DIR=$HOME/.local
export PATH=$MY_INSTALL_DIR/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib
