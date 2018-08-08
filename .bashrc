prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# git aliases
alias gc='git checkout'
alias gcm='git commit -m'
alias gs='git status'
alias ga='git add --all'
alias gp='git pull --rebase'
alias gb='git branch -vv'
alias gr='git remote -v'
alias grt='git reset --hard'
alias gpub='git push origin publish'
alias grp='git rebase publish'
alias gdev='git push origin dev'
alias gd='git branch -D'
alias gm='git merge'
alias gmx='git merge -X theirs'
alias gh='git push hozefa'
alias gk='gitk &'
alias gda='git branch | grep -v "develop" | grep -v "release" | xargs git branch -D'
alias gf='git fetch'

# npm aliases
alias ni="npm install";
alias ns="npm run start -s --";
alias nb="npm run build -s --";
alias nt="npm run test -s --";
alias rd="rm -rf node_modules;"

#misc
alias cl='clear'

#locations
alias mpp='cd /Users/hjodiawalla/Desktop/MPP/MPPContent/ContentRoot'
alias mppr='cd /Users/hjodiawalla/Desktop/MPP/MPPResources'
alias kitsune='cd /Users/hjodiawalla/Desktop/MPP/mppnodeweb'
alias gscr='cd /Users/hjodiawalla/Desktop/Misc/git-scripts'
alias nscr='cd /Users/hjodiawalla/Desktop/Misc/node-scripts'
alias utils='cd /Users/hjodiawalla/Desktop/MPP/Utils'
alias cep='cd /Users/hjodiawalla/Desktop/CEP/campaigninsightnodeweb'

#git branch in bash.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
