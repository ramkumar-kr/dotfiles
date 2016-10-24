export CLICOLOR=1

export TERM=xterm-256color
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export LSCOLORS=ExFxBxDxCxegedabagacad

alias rs="bundle exec rails s"
alias rc="bundle exec rails c"
alias bi="bundle install"
alias gst="git status"
alias gco="git checkout"
alias ga="git add"
alias gd="GIT_PAGER='' git diff"
alias gdc="GIT_PAGER='' git diff --cached"
alias gs="git show"
alias gc="git commit"
alias gpum="git pull upstream master"
alias gl="git log"
alias gl1="git log --oneline"
alias serve="python -m SimpleHTTPServer"
alias bs="bundle show"
alias gsts="git stash save"
alias gstp="git stash pop"

function t
{
  printf "\033]0;%s\007" "$1"
}
