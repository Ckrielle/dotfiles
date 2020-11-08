# Lines configured by zsh-newuser-install
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
HISTFILE="$XDG_CACHE_HOME/zsh/zsh_history"
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# Aliases
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'

# The following lines were added by compinstall
zstyle :compinstall filename '/home/korai/.zshrc'

#export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':'):"

autoload -Uz compinit
compinit
# End of lines added by compinstall

