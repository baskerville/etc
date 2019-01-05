. ~/.environment

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
WORDCHARS=${WORDCHARS:s,/,,}
export HISTFILE HISTSIZE SAVEHIST WORDCHARS

MANPATH=/usr/local/man:/opt/pkg/share/man
export MANPATH
eval $(/usr/libexec/path_helper -s)
export MANPATH="$MANPATH":~/.local/share/man
typeset -U path
path=($path ~/bin ~/.local/bin ~/.local/bin/clang-checker/bin ~/.cargo/bin $GOPATH/bin ~/Library/Python/3.7/bin)
fpath=(~/.zfunc "${fpath[@]}")
