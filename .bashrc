[[ $- != *i* ]] && return
export GEM_ENV=~/.local/share/gem/ruby/3.2.0/bin
export BUNDLE_PATH=~/.gems
export PATH=~/stuff/scripts:~/.cargo/bin:$BUNDLE_PATH:$GEM_ENV:$PATH
export PATH=~/go/bin:$PATH
export MOZ_ENABLE_WAYLAND=1

alias ls='ls --color=auto -a'
alias grep='grep --color=auto'
alias v='nvim'
alias 'ls'='lsd -ha'

### python environments
alias 'elev'="source $HOME/stuff/python/eleven/bin/activate"
alias 'pye'="source $HOME/stuff/python/default/bin/activate"
alias 'dotfiles'='/usr/bin/git --git-dir=$HOME/linux_dots/ --work-tree=$HOME'
###

### scripts
alias 'night'='sh night.sh'
alias 'wpre'='sh web-preview.sh'
###

## thunar
alias 'open'='thunar . & > /dev/null &'

eval "$(zoxide init bash)"
export PS1='\e[1;34m\W \e[0m '
