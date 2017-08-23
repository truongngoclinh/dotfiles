# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
 # ******************** boiboi preferences **********************
# local: change 'ngoclinh.truong' to 'Truong' on PATH
ANT_HOME=/Users/Truong/Downloads/apache-ant-1.9.7

export PATH="/usr/local/opt/gettext/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/Users/Truong/Library/Android/sdk/
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools
export PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin

export JAVA_OPTS="-XX:PermSize=256m -XX:MaxPermSize=512m"

fortune | cowsay | lolcat
 
# disable ctrl-D closes terminal: http://unix.stackexchange.com/questions/139115/disable-ctrl-d-window-close-in-terminator-terminal-emulator
set -o ignoreeof
 
DEFAULT_USER='Truong'
 
plugins=(zsh-autosuggestions)
 
bindkey '^ ' autosuggest-accept
 
# git
alias gcl='git clone'
alias gst='git status'
alias gb='git branch'
alias gba='git branch -a'
alias gbm='git branch -m'
alias gl='git log --pretty=oneline'
alias grl='git reflog'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcmo='git checkout origin/master'
alias gcdo='git checkout origin/dev'
alias gcb='git checkout -b'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gcH='git checkout HEAD --' #path of file to revert
alias gcca='git checkout -- .'
alias gcc='git checkout --' # discard change
alias gchh='git reset HEAD' # unstage file
alias gch='git reset' # unstage file
# alias gcs='git reset --soft'
alias gcld='git clean -df'
alias gr='git rebase'
alias grm='git rebase master'
alias grmo='git rebase origin/master'
alias gri='git rebase -i'
alias grs='git rebase --skip'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gcom='git commit -m'
alias gcoa='git commit -a'
alias gaa='git add --all'
alias ga.='git add .'
alias ga='git add'
alias gaj='git add \*.java'
alias gax='git add \*.xml'
alias gag='git add \*.gradle'
alias gp='git push origin'
alias gpo='git push origin master'
alias gpuo='git push -u origin master'
alias gpf='git push --force origin'
alias gpb='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gpfb='git push --force origin `git rev-parse --abbrev-ref HEAD`'
alias gbn='git rev-parse --abbrev-ref HEAD'
alias gpl='git pull'
alias gplo='git pull origin master'
alias gplH='git pull origin HEAD'
alias gfo='git fetch origin master'
alias gmo='git merge origin master'
alias gf='git fetch'
alias gm='git merge'
alias gmfo='git merge -s ours'
alias gmft='git merge -s theirs'
alias gma='git merge --abort'
alias gs='git stash'
alias gsa='git stash apply'
alias gsp='git stash pop'
alias gsd='git stash drop'
alias gsl='git stash list'
alias grs='git reset --soft'
alias grhead='git reset HEAD'
alias grh='git reset --hard'
alias grmix='git reset --mixed'
alias grs1='git reset --soft HEAD~1'
alias grh1='git reset --hard HEAD~1'
alias grmix1='git reset --mixed HEAD~1'
# init git on existing folder
alias gi='git init'
alias grao='git remote add origin'
alias grv='git remote -v'
alias grsurl='git remote set-url'
alias gsu='git submodule update'
alias gsi='git submodule --init'
alias gsui='git submodule update --init'
alias gsuir='git submodule update --init --recursive'
 
# commands
alias lla='ls -la'
alias lsa='ls -a'
alias rmr='rm -r'
alias download='cd ~/Downloads'
alias desktop='cd ~/Desktop'
 
# application
alias skype='sudo /Applications/Skype.app/Contents/MacOS/Skype' # bad, alway open new instance
alias -s txt=vim
alias -s rb=vim
alias -s py=vim
alias -s xml=vim
alias -s json=vim
alias -s java=vim
alias -s JSON=vim
alias -s gradle=vim
alias -s md=vim
alias -s h=vim
alias -s m=vim
alias -s c=vim
alias -s cpp=vim
 
# specific location
alias smw='cd ~/SMW'
alias wsp='cd ~/WSP'
alias wspbe='cd ~/WSP_BE'
alias wspios='cd ~/WSP_IOS'
alias wspothers='cd ~/WSP_OTHERS'
alias wspjs='cd ~/WSP_JS'
alias wspsp='cd ~/WSP/sp'
alias nvkd='cd ~/WSP/GARENA/NVKD_android'
alias gas='cd ~/WSP/gas-v2'
alias gas1='cd ~/WSP/garena-plus'
alias streaming_android='cd ~/WSP/GARENA/VED_Gaming'
alias streaming_ios='cd ~/WSP/GARENA/IOS_streaming_library'
alias toppay='cd ~/WSP/GARENA/TopPay_android/beepay'
alias toppay_protocol='cd ~/WSP/GARENA/Toppay_protocol'
alias cyberpay='cd ~/WSP/GARENA/SG/cyberpay-admin-app'
alias cyberpayios='cd ~/WSP_IOS/cyberpay'
alias cyberpayservice='cd ~/WSP_BE/cyberpay_service_mobile'
alias gasios='cd ~/WSP_IOS/gas-ios'
alias github='cd ~/WSP/github'
alias githubios='cd ~/WSP_IOS/github'
alias toppay_reactnative='cd ~/WSP/GARENA/toppay_reactnative'
alias cyberpay_transify='cd /Users/Truong/WSP/GARENA/SG/cyberpay-admin-app/misc/scripts'

# config
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias vdiff='vim -d' # E.g. vimdiff file1.java file2.java
alias vconf='vi ~/.config/nvim/init.vim'
alias vimdiff='vim -d' # E.g. vimdiff file1.java file2.java
alias vimconf='vi ~/.config/nvim/init.vim'
 
alias hconfig='sudo vim /etc/hosts'
alias vdir='cd ~/.vim/bundle'
alias vconfig='vim ~/.vimrc'
alias zconfig='vim ~/.zshrc'
alias bconfig='vim ~/.bash_profile'
alias zupdate='source ~/.zshrc'
alias bupdate='source ~/.bash_profile'

alias rn='react-native'
alias rni='react-native init'
alias rnra='react-native run-android'
alias rnri='react-native run-ios'
alias rnh='react-native --help'

# ******************* end *********************
 
# Path to your oh-my-zsh installation.
#export ZSH=/Users/ngoclinh.truong/.oh-my-zsh
export ZSH=/Users/Truong/.oh-my-zsh
 
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
 
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
 
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
 
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
 
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
 
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
 
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
 
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
 
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
 
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
 
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
 
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
 
#source ~/.iterm2_shell_integration.`basename $SHELL`
source $ZSH/oh-my-zsh.sh
 
# User configuration
 
# export MANPATH="/usr/local/man:$MANPATH"
 
# You may need to manually set your language environment
export LANG=en_US.UTF-8
 
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
 
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.profile
