# Run chrome with WebGL support enabled
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-wegbl --ignore-gpu-blacklist &"

# Rsync app code to my devbox
alias rsync-code="rsync -avz --delete /Users/kflorence/Sites/wikia/source/app kflorence@dev-kflorence:/usr/wikia/source"

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Nicer looking prompt with git branch in it
export PS1="\u@\h:\W\$(parse_git_branch)\$ "
