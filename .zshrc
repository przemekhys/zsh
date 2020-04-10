# Proxy 
source .zsh/proxy

#autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e


# The following lines were added by compinstall
#zstyle :compinstall filename '/home/przemek/.zshrc'
zstyle ':completion:*' menu select
zmodload zsh/complist
autoload -Uz compinit
compinit
_comp_options+=(globdots)		# Include hidden files.

# End of lines added by compinstall


plugins=(
  git
  git-flow
  history 
)

source .zsh/kafka.plugin.zsh
neofetch


# syntax highlightinq
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export LANG="en_US.UTF-8"
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
