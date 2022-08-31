# shortcuts
shortcuts and stuff

```
export DEV_HOME=~/development/stack
alias goto_stack='cd ~/development/stack'
alias goto_webapi='goto_stack && cd webapi'
alias stack_git_username='goto_stack && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c \"cd '{}' && pwd && git config user.email 'molivas@stackct.com' && git config user.name 'molivas' && git config --get user.name && git config --get user.email\" \;'
# different functionalities
alias goto_os='cd ~/development/open-source'
alias goto_marcelo='cd ~/development/personal'
alias storybook='goto_webapi && cd cd app/src/CTKO.CombinedServer/devroot/ && npm run sb ; cd -'
alias webapi_test='goto_webapi && cd app/src/CTKO.CombinedServer/devroot/ && npm run test ; cd -'
# git 
function git_branch_name {

  branch_name=`git branch 2>/dev/null | grep "^*" | cut -d' ' -f2-`

  echo $branch_name
}

function git_squash {
  number_commits=2
  if [[ $# -gt 0 ]]; then
    if [[ $1 -lt 2 ]]; then
      echo "Must squash 2 or more commits"
      return
    fi
    number_commits=$1
  fi

  git rebase -i HEAD~$number_commits
}

alias ga="git add"
alias gamend="git commit --amend"
alias gb="git branch"
alias gbr="git branch -r"
alias gbl="git blame"
alias gc="git commit"
alias gcat="git show"
alias gcs="git commit -S"
alias gcm="git commit -m"
alias gcnm="git commit -n -m"
alias gcsm="git commit -S -m"
alias gca="git commit -a"
alias gcam="git commit -a -m"
alias gcanm="git commit -a -n -m"
alias gcas="git commit -a -S"
alias gcasm="git commit -a -S -m"
alias greset="git reset --hard"
alias gclean="git clean -f -d"
alias gd="git diff"
alias gds="git diff --staged"
alias gm="git merge"
alias gmt="git mergetool"
alias gchd="git checkout dev && set_prompt"
alias gchm="git checkout master && set_prompt"
alias gco=". git_checkout.sh"
alias gcom=". git_checkout.sh master"
alias gogl="git log"
alias gog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset) %G?' --all"
alias gogb="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset) %G?' -b"
alias gogs="git log --graph --name-status"
alias gogp="git log --graph -p"
alias gogo="git log --oneline"
alias gout='git log origin/`git_branch_name`..`git_branch_name` --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset) %G?"'
alias goutl='git log origin/`git_branch_name`..`git_branch_name`'
alias gouts='git log origin/`git_branch_name`..`git_branch_name` --name-status'
alias goutp='git log origin/`git_branch_name`..`git_branch_name` -p'
alias goutm='git log origin/`git_branch_name`..`git_branch_name`'
alias goutd="git log develop..develop"
alias gid="git rev-parse HEAD"
alias gin="git log ..origin/master"
alias grollback="git reset --soft HEAD~1"
alias gl="git pull" 
alias glr="git pull --rebase"
alias glom="git pull origin master" 
alias gh="git push" 
alias ghom="git push origin master" 
alias gsquash="git_squash"
alias grall="git checkout ."
alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias grd="git rebase dev master && set_prompt"
alias grm="git rebase master dev && set_prompt"
alias grl="git reflog"
alias gs="git status -s"
alias gshow="git show"
alias gss="git status -s"
alias gsb="git show-branch --more=10"
alias gst="git stash save" 
alias gsta="git stash apply" 
alias gstd="git stash drop"
alias gstl="git stash list" 
alias gsto="git stash pop" 
alias gstp="git stash show -p" 
alias gsu="git submodule update --recursive --remote"
alias gsv="git status"
alias gx="gitx"
# Git submodules
alias gsmlr="git submodule foreach git pull --rebase"
alias gsmom="git submodule foreach git checkout master"


# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/Users/marcelo/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
export BASH_IT_THEME="zork"
eval "$(direnv hook bash)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# stackct
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/development/stack/stackdb/bin"
export PATH="$PATH:$HOME/development/stack/azuresim/bin"
export PATH="$PATH:$HOME/development/stack/toxic/bin"
export PATH="$PATH:$HOME/development/stack/devtools/bin"
export PATH="$PATH:$HOME/development/stack/webapi/app/src/CTKO.CombinedServer/wwwroot/node_modules/.bin/"


alias kubectl="kubecolor"
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marcelo/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/marcelo/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marcelo/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/marcelo/Downloads/google-cloud-sdk/completion.bash.inc'; fi
```