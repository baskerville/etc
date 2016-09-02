. ~/.environment

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
WORDCHARS=${WORDCHARS:s,/,,}
export HISTFILE HISTSIZE SAVEHIST WORDCHARS

eval $(/usr/libexec/path_helper -s)
typeset -U path
path=($path ~/bin ~/.local/bin ~/.local/bin/clang-checker ~/.local/bin/FDK/Tools/osx ~/.cargo/bin $GOPATH/bin)
