. ~/.shell_aliases
. ~/.shell_functions

autoload -U compinit && compinit
autoload -U colors && colors
autoload -U edit-command-line
autoload -U insert-composed-char
zle -N edit-command-line
zle -N insert-composed-char

zstyle ':completion:most-recent-file:*' match-original both
zstyle ':completion:most-recent-file:*' file-sort change
zstyle ':completion:most-recent-file:*' file-patterns '*:all\ files'
zstyle ':completion:most-recent-file:*' hidden all
zstyle ':completion:most-recent-file:*' completer _files
zle -C most-recent-file menu-complete _generic
zstyle ':completion:*' list-colors $LS_COLORS

bindkey -e
bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward
bindkey '\er' history-incremental-search-forward
bindkey '\e[3~' delete-char
bindkey '\ee' edit-command-line
bindkey '\e[31~' insert-composed-char
bindkey '\e^b' copy-prev-word
bindkey '^[[Z' reverse-menu-complete
bindkey '\e,' most-recent-file
bindkey '\e[' vi-find-prev-char
bindkey '\e]' vi-find-next-char

# Case insensitive completion
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

setopt brace_ccl
setopt prompt_subst
setopt no_case_glob extended_glob
setopt hist_ignore_dups hist_find_no_dups hist_reduce_blanks
setopt share_history
setopt no_hup

PROMPT='%(?.%{$fg_bold[yellow]%}▶.%{$fg[red]%}●) %{$reset_color%}'
PROMPT2='%{$fg_bold[black]%}◾%{$reset_color%}'
RPROMPT='%{$fg_bold[black]%}%~ %(V.%{$fg_bold[blue]%}%v .)%{$fg[white]%}%T%{$reset_color%}'

precmd() {
	psvar[1]=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
	[ "$PWD" -ef "$HOME" ] || fdb -a "$PWD"
}
