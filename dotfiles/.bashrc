PROMPT_COLOR='\e[00m\e[38;05;166m'
export PS1='\['$PROMPT_COLOR'\]\w\$\[\e[0m\] '
export EDITOR=vim

MILLION=1000000
export HISTFILESIZE=$MILLION
export HISTSIZE=$MILLION

# update bash history after each command
export PROMPT_COMMAND="history -a"

export MPORTS_DIR=/opt/local/bin:/opt/local/sbin
# prefer macports stuff
PATH=$MPORTS_DIR:$PATH
export EMACS='/opt/local/bin/emacs'
export LS='/opt/local/bin/gls'

alias e=emacs
alias ls='$LS --color=auto'
alias l='ls'

# John's laptop made me use MacVim
alias vim='mvim -v'
alias vi='mvim -v'

# I never remember to prefer pry
alias irb='pry'

# fish is the best
alias fish='exec '/Users/appacademy/Downloads/fish.app/Contents/Resources/base/bin/fish''
source .dotfiles/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin
source ~/.rvm/scripts/rvm
source $rvm_path/scripts/completion

PATH="/usr/local/mysql/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

