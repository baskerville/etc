. ~/.environment

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
WORDCHARS=${WORDCHARS:s,/,,}
export HISTFILE HISTSIZE SAVEHIST WORDCHARS

eval $(/usr/libexec/path_helper -s)
typeset -U path
path=($path ~/bin ~/.local/bin ~/.local/bin/clang-checker/bin $GOPATH/bin ~/.cargo/bin ~/Library/Python/2.7/bin ~/Library/Python/3.7/bin)
fpath=(~/.zfunc "${fpath[@]}")
