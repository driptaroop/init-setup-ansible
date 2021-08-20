#------------------------- brew config -----------------------
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#------------------------- antigen config -----------------------
source ~/.antigen/antigen.zsh
antigen update
antigen init ~/.antigen/.antigenrc

#------------------------- exa config -----------------------
alias ls='exa --group-directories-first --icons --color-scale'
alias lt='exa --tree --level=2 --icons' # Show in tree view
alias ll='ls -lahgum'                   
alias lll='lt -lahgum'
alias l='ls -a'                         # Short, all files
alias lC='la --sort=changed'            # Long, sort changed
alias lM='la --sort=modified'           # Long, sort modified
alias lS='la --sort=size'               # Long, sort size
alias lX='la --sort=extension'          # Long, sort extension

#------------------------- ripgrep config -----------------------
alias grep="rg"

#------------------------- fd config -----------------------
find(){
    fd $1 | fzf
}

#------------------------- fzf config -----------------------
alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

#------------------------- bat config -----------------------
tail() {
    tail $1 | bat --paging=never -l log
}
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#------------------------- thefuck config -----------------------
eval $(thefuck --alias)
eval $(thefuck --alias fuck)

#------------------------- bpytop config -----------------------
alias top="bpytop"

#------------------------- zoxide config -----------------------
eval "$(zoxide init zsh)"
alias cd="z"
alias cdd="zi"

#------------------------- micro config -----------------------
alias v="micro"

#------------------------- Ranger config -----------------------
export RANGER_LOAD_DEFAULT_RC=false

#------------------------- Navi config -----------------------
# use ctrl-space
bindkey '^ ' navi_widget

#------------------------- bat config -----------------------
alias cat="bat"

#------------------------- p10k config -----------------------
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#------------------------- cowsay config -----------------------
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#------------------------- startup info dump -----------------------
neofetch
fortune -s computers | cowsay -f stegosaurus | lolcat