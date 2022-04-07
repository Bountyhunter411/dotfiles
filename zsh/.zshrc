# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# alias'
alias ls='ls -l --color=auto'
alias la='ls -la --color=auto'
alias rr='rm -rf'
alias grep='grep --color' 
alias rgrep='rgrep -n --color' 
alias diff='colordiff' 
alias tail='colortail' 
alias make='colormake'   

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select

# Autocomplete insensitivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/daniel/.zshrc'

autoload -U promptinit && promptinit
autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
