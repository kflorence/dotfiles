alias tunnel="ssh -l kflorence -L 5022:10.8.36.201:22 bastion.wikia.net"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-wegbl --ignore-gpu-blacklist &"

# Put git in PATH
PATH="${PATH}:/usr/local/git/bin"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/2.7/bin"
export PATH

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Nicer looking prompt with git branch in it
export PS1="\u@\h:\W\$(parse_git_branch)\$ "
