function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Nicer looking prompt with git branch in it
# https://github.com/mbadolato/iTerm2-Color-Schemes
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[35;1m\]\$(parse_git_branch)\[\033[m\]\$ "

# ls colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# rbenv completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# PATH
export PATH=/usr/local/bin:$PATH
