# If you come from bash you might have to change your $PATH.
#
# ******************** boiboi preferences **********************
# local: change 'ngoclinh.truong' to 'Truong' on PATH

ANT_HOME=/Users/Truong/Downloads/apache-ant-1.9.7

export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/gettext/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/Users/Truong/Library/Android/sdk/
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:$ANDROID_HOME/platform-tools
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin
export JAVA_OPTS="-XX:PermSize=256m -XX:MaxPermSize=512m"

export M2_HOME=/Users/Truong/downloads/apache-maven-3.5.0
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/
export PATH=$PATH:/usr/local/lib/node_modules/typescript/bin


#grunt
export PATH=$PATH:/usr/local/share/npm/bin/
export GRUNT_HOME=/usr/local/lib/node_modules/grunt/bin
export PATH=$PATH:$GRUNT_HOME/

#fortune | cowsay | # lolcat
 
# disable ctrl-D closes terminal: http://unix.stackexchange.com/questions/139115/disable-ctrl-d-window-close-in-terminator-terminal-emulator
set -o ignoreeof
 
DEFAULT_USER='Truong'
 
plugins=(zsh-autosuggestions)

bindkey '^ ' autosuggest-accept
 
# git
alias gpt='git push --tags'
alias gtl='git tag --list'
alias gt='git tag'
alias gtd='git tag --delete'
alias gpd='git push --delete' 
alias gtlt='git describe --tags `git rev-list --tags --max-count=1`'
alias gptvn='git push vn --tags'
alias gcl='git clone'
alias gst='git status'
alias gb='git branch --sort=committerdate'
alias gbsut='git branch --set-upstream-to' # origin/branch_name
alias gbvv='git branch -vv' # check tracked branch
alias gbr='git branch -r'
alias gba='git branch -a'
alias gbm='git branch -m'
alias gl='git log --pretty=oneline'
alias glt='git log --all --decorate --oneline --graph'
alias glo='git log'
alias glm='git lg'
alias gls='git log --stat'
alias gll='git reflog -1 | sed `s/^.*: //`'
alias grl='git reflog'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcmv='git checkout master_vn'
alias gcmo='git checkout origin/master'
alias gcdo='git checkout origin/dev'
alias gcb='git checkout -b'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gcH='git checkout HEAD --' #path of file to revert
alias gccH='git checkout HEAD -- .'
alias gcca='git checkout -- .'
alias gcc='git checkout --' # discard change
alias gcd='git checkout .'
alias gchh='git reset HEAD' # unstage file
alias gch='git reset' # unstage file
# alias gcs='git reset --soft'
alias gcldff='git clean -ffdx'
alias gcld='git clean -df'
alias gr='git rebase'
alias grm='git rebase master'
alias grmo='git rebase origin/master'
alias gri='git rebase -i'
alias grs='git rebase --skip'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gcom='git commit -m'
alias gcoa='git commit --amend'
alias gaa='git add --all'
#alias grm='git rm'
alias ga.='git add .'
alias ga='git add'
alias gaj='git add \*.java'
alias gax='git add \*.xml'
alias gag='git add \*.gradle'
alias gp='git push origin'
alias gpo='git push origin master'
alias gpuo='git push -u origin'
alias gpuom='git push -u origin master'
alias gpf='git push --force origin'
alias gpb='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gpbvn='git push vn `git rev-parse --abbrev-ref HEAD`'
alias gpfb='git push --force origin `git rev-parse --abbrev-ref HEAD`'
alias gpfbvn='git push --force vn `git rev-parse --abbrev-ref HEAD`'
alias gbn='git rev-parse --abbrev-ref HEAD'
alias gpl='git pull'
alias gplvn='git pull vn'
alias gplo='git pull origin master'
alias gplr='git pull --rebase'
alias gplrvn='git pull vn --rebase'
alias gplro='git pull --rebase origin master'
alias gplrovni='git pull --rebase vn master_vn'
alias gplrovna='git pull --rebase vn vn_release'
alias gfo='git fetch origin'
alias gmo='git merge origin'
alias gplom='git pull origin master'
alias gplH='git pull origin HEAD'
alias gfom='git fetch origin master'
alias gmom='git merge origin master'
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
alias gro='git reset' #reset overzealous 'git add' run
alias grs='git reset --soft'
alias grhead='git reset HEAD'
alias grh='git reset --hard'
alias grmix='git reset --mixed'
alias grmix1='git reset --mixed HEAD~1'
alias grs1='git reset --soft HEAD~1'
alias grh1='git reset --hard HEAD~1'
alias grmix1='git reset --mixed HEAD~1'
# init git on existing folder
alias gi='git init'
alias grao='git remote add origin'
alias grv='git remote -v'
alias grsurl='git remote set-url'
alias gsabm='git submodule add -b master' #[URL to Git repo]
alias gsu='git submodule update'
alias gsi='git submodule --init'
alias gsui='git submodule update --init'
alias gsuir='git submodule update --init --recursive'
alias gsubl='git submodule --quiet foreach --recursive `echo $name`'
 
# commands
alias lla='ls -la'
alias lsa='ls -a'
alias rmr='rm -r'

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
alias mobot='cd /Users/Truong/WSP_OTHERS/mattermost_bot'
alias download='cd ~/Downloads'
alias desktop='cd ~/Desktop'
alias user='cd ~'
alias sshcf='cd ~/.ssh'
alias book='cd /Users/Truong/documents/github/Books/book-warehouse'
alias smw='cd ~/SMW'
alias wsp='cd ~/WSP'
alias wspbe='cd ~/WSP_BE'
alias wspocha='cd ~/WSP_OCHA'
alias wspfe='cd ~/WSP_FE'
alias wspios='cd ~/WSP_IOS'
alias wspothers='cd ~/WSP_OTHERS'
alias wspjs='cd ~/WSP_JS'
alias wspsp='cd ~/WSP/sp'
alias nvkd='cd ~/WSP/GARENA/NVKD_android'
alias vpay_admin='cd ~/WSP_BE/vpay/web/vpay_admin'
alias gas='cd ~/WSP/gas-v2'
alias gas1='cd ~/WSP/garena-plus'
alias streaming_android='cd ~/WSP/GARENA/VED_Gaming'
alias streaming_ios='cd ~/WSP/GARENA/IOS_streaming_library'
alias toppay='cd ~/WSP/GARENA/TopPay_android/beepay'
alias toppay_protocol='cd ~/WSP/GARENA/Toppay_protocol'
alias cbp='cd ~/WSP/GARENA/SG/cyberpay-admin-app'
alias cbpios='cd ~/WSP_IOS/cyberpay'
alias cbpservice='cd ~/WSP_BE/cyberpay_service_mobile'
alias cbpfeservice='cd ~/WSP_BE/cyberpay_webclient_backend'
alias cbpfeseller='cd ~/WSP_FE/cyberpay_webclient_frontend'
alias gasios='cd ~/WSP_IOS/gas-ios'
alias github='cd ~/WSP/github'
alias githubios='cd ~/WSP_IOS/github'
alias toppay_reactnative='cd ~/WSP/GARENA/toppay_reactnative'
alias cbptrans='cd /Users/Truong/WSP/GARENA/SG/cyberpay-admin-app/misc/scripts'
alias scripts='cd /Users/Truong/Script'
alias gfw='cd /Users/Truong/WSP_IOS/appium_automationTest/GAutomationFW'
alias ocharn='cd ~/WSP_OCHA/ocha-crm-rn'
alias ochaios='cd ~/WSP_OCHA/OchaCRM'
alias ocha='cd ~/WSP_OCHA/ocha-crm'

#appium
alias appiumDir='cd /Users/Truong/appium'
alias surefire='cd /Users/Truong/WSP_IOS/appium_automationTest/airpay_counter_ios_automation/target/surefire-reports'

# run scripts
SCRIPT_PATH=/Users/Truong/Script
alias stappium='sh $SCRIPT_PATH/start_appium_server.sh'
alias stdotfiles='sh $SCRIPT_PATH/update_dotfiles.sh'
alias stdaily='sh $SCRIPT_PATH/update_daily.sh'
alias lang_ac_android='sh $SCRIPT_PATH/update_lang_ac_android.sh'
alias lang_ac_ios='sh $SCRIPT_PATH/update_lang_ac_ios.sh'
alias vpn='sh $SCRIPT_PATH/vpn.sh'
alias lang_ac_be='cd /Users/Truong/WSP_BE/cyberpay_service_mobile/scripts/; rake lang'
alias cdate='sh $SCRIPT_PATH/date.sh'

# automation fw
alias sttc='sh $SCRIPT_PATH/gw_tc_start.sh' # start test case
alias stbtc='sh $SCRIPT_PATH/gw_tc_build_and_start.sh' # build and start test case

# config
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias py='python'
alias e='emacs'

alias vdiff='vim -d' # E.g. vimdiff file1.java file2.java
alias vcf='vi ~/.config/nvim/init.vim'
alias vimdiff='vim -d' # E.g. vimdiff file1.java file2.java
alias vimconf='vi ~/.config/nvim/init.vim'
 
alias hcf='sudo vim /etc/hosts'
alias vdir='cd ~/.vim/bundle'
alias vcf='vim ~/.vimrc'
alias icf='vim ~/.ideavimrc'
alias xcf='vim ~/.xvimrc'
alias kcf='vim ~/.vimrc.keymap'
alias zcf='vim ~/.zshrc'
alias bcf='vim ~/.bash_profile'
alias ecf='vim ~/.emacs.d/init.el'
alias zud='source ~/.zshrc'
alias bud='source ~/.bash_profile'

alias rn='react-native'
alias rni='react-native init'
alias rnra='react-native run-android'
alias rnri='react-native run-ios  --simulator "iPhone 7"'
alias rnh='react-native --help'

# fastlane
alias f='fastlane'

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

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

# react-native
function rn-clean() {
  watchman watch-del-all
  rm -rf $TMPDIR/react-*
  rm -rf $TMPDIR/haste-*
  rm -rf $TMPDIR/metro-*
  npm start -- --reset-cache
}
export PATH="/usr/local/opt/mysql@5.5/bin:$PATH"
