## GIT
alias gstatus="git status"
alias gpull="git pull"
alias gpush="git_push" 
alias gipush="git push" 
alias gdiff="git diff"
alias gcheckout="git checkout"
alias gcsearch="git_checkout_search"
alias gmerge="git merge"
alias grebase="git rebase"
alias gstash="git stash"
alias gpick="git cherry-pick"
alias greset="git reset"
alias gbranch="git branch"
alias glog="git log"
alias gadd="git add"
alias gclone="git clone"
alias gshow="git show"
alias gporigin="git_push_origin"
alias geignore="echo_ignore"

function git_checkout_search(){
    git checkout $(git branch -r | fzf)
}

function git_push(){
    git add . && git commit -m $1 && git push
}
function git_push_origin(){
    git push --set-upstream origin $1
}


function echo_ignore(){
	echo ".classpath" >> .gitignore
	echo ".factorypath" >> .gitignore
	echo ".project" >> .gitignore
	echo ".settings/" >> .gitignore
}
