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
alias gl='git log -3'
# cleans all branches locally that have already been merged.
alias gcmb="git branch --merged | grep -Ev '(^\*|develop)' | xargs git branch -d"

#https://davidwalsh.name/pull-down-pr
git config --global --add alias.pr '!f() { git fetch -fu ${2:-upstream} refs/pull/$1/head:pr/$1 && git checkout pr/$1; }; f'
git config --global --add alias.pr-clean '!git checkout master ; git for-each-ref refs/heads/pr/* --format="%(refname)" | while read ref ; do branch=${ref#refs/heads/} ; git branch -D $branch ; done'

# npm aliases
alias ni="npm install";
alias ns="npm run start -s --";
alias nb="npm run build -s --";
alias nt="npm run test -s --";
alias rd="rm -rf node_modules;"

#misc
alias cl='clear'
alias ls='ls --color=auto -ACF'

#locations

#git branch in bash.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
