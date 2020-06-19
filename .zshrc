# Proxy 
source .zsh/proxy



# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
alias history="history 0"
bindkey -e


# The following lines were added by compinstall
#zstyle :compinstall filename '/home/przemek/.zshrc'
zstyle ':completion:*' menu select
zmodload zsh/complist
autoload -Uz compinit
compinit
_comp_options+=(globdots)		# Include hidden files.

#KAFKA
source .zsh/kafka.plugin.zsh
neofetch

#az
autoload bashcompinit && bashcompinit
source .zsh/az.completion

# syntax highlightinq
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#POWERLEVEL9K
export LANG="en_US.UTF-8"
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(kubecontext  time)

