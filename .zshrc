# Proxy 
source ~/.zsh/proxy

# WSL2
export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=0
cd ~/


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


#KUBECTL
source <(kubectl completion zsh)

#HELM
source <(helm completion zsh)

#KAFKA
source ~/.zsh/kafka.plugin.zsh
#neofetch

#az
autoload bashcompinit && bashcompinit
source ~/.zsh/az.completion

# syntax highlightinq
##source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#POWERLEVEL9K
export LANG="en_US.UTF-8"
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(kubecontext  time)

