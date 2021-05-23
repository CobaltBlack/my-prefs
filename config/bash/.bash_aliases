# Bash related
alias rebash="source ~/.bashrc"
alias editalias="vim ~/.bash_aliases"
alias ghelp="cat ~/.bash_aliases"

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# General
md () {
  mkdir -p $1
  cd $1
}

alias sendclip="xclip -o -selection clipboard > /tmp/clip"
alias getclip="cat /tmp/clip | xclip -i -selection clipboard"


# Git aliases
alias gs="git status -uno"
alias gb="git branch"
alias gch="git checkout"
alias gc="git commit"
alias gl="git log"
alias glg="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
alias gd="git diff -w $1 > /tmp/gitdiffoutput.diff && code - /tmp/gitdiffoutput.diff"
alias gdm="git diff -w master > /tmp/gitdiffoutput.diff && code - /tmp/gitdiffoutput.diff"
alias gds="git diff --staged > /tmp/gitdiffoutput.diff && code - /tmp/gitdiffoutput.diff"
alias gaw="git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -"
alias gbd="gch master && gb -D $1"
alias gdc="git diff $1~ $1"

gchremote () {
  git remote set-branches --add origin $1
  git fetch
  git checkout $1
}

function gbd {
  git checkout master
  git branch -D $1
}
