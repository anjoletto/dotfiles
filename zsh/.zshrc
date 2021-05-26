autoload -Uz promptinit
promptinit

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
if [[ `uname` == 'Linux' ]]; then
    eval "$(dircolors -b)"
fi
zstyle ':completion:*:' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# custom alias
if [[ `uname` == 'Darwin' ]]; then
    alias ls='ls -G'
    alias gvim='mvim'
    alias pylab='docker run --rm -it --name lab --network host --mount type=bind,src=$HOME,dst=/home/jovyan/work --mount type=bind,src=$HOME/.jupyter,dst=/home/jovyan/.jupyter -e JUPYTER_ENABLE_LAB=yes pylab'
    alias ipython='docker run --rm -it --name ipython --workdir /home/jovyan/work --mount type=bind,src=$PWD,dst=/home/jovyan/work pylab jupyter-console'
    alias cargo='docker run --rm -it --name rust --mount type=bind,src=$PWD,dst=/rust --workdir /rust -e USER=$USER rust:alpine cargo'
    alias rustc='docker run --rm -it --name rust --mount type=bind,src=$PWD,dst=/rust --workdir /rust -e USER=$USER rust:alpine rustc'
    alias rustsh='docker run --rm -it --name rust --mount type=bind,src=$PWD,dst=/rust --workdir /rust -e USER=$USER rust:alpine ash'
else
    alias startx='cd; startx'
    alias dmenu_run="dmenu_run -l 20 -fn 'Fira Sans Mono-20' -sb grey -sf black"

    export PAGER="less"
    # for i3-sensible stuff
    export TERMINAL="alacritty"
fi

alias tmux='tmux -2 -f $HOME/.config/tmux.conf'
alias dd='dd status=progress'
alias ls='exa'
alias devenv='xhost + && lxc start dev && lxc exec dev login'

export XZ_OPT=-9
ROOT_PATH="/usr/local/sbin:/usr/sbin:/sbin"
PATH="$PATH:$HOME/.dots/kbd"
export PATH="/var/lib/flatpak/exports/bin:$PATH"
export PATH="$PATH:$ROOT_PATH"
export EDITOR="nvim"

# other options
setopt nobeep
setopt AUTO_CD
setopt EXTENDED_GLOB


# custom prompt
PROMPT="%(?.%F{green}.%F{red})%(!.>>.->)%F{gray} "

setopt prompt_subst
autoload -Uz vcs_info


zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' formats '%F{green}[%b%u]'

precmd_functions+=( vcs_info )

RPROMPT=' ${vcs_info_msg_0_}%F{red}[%m]%F{yellow}[%4~]%F{cyan}[%D{%H:%M}]%F{gray}'
