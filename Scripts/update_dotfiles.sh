# script for updating dotfiles to github

nowDate="$(date +%d/%m/%Y)"
nowHours="$(date +%T)"

echo "\033[0;31m =>> Starting... \033[0m"
echo "\033[0;33m ==> Moving dotfiles to local repo \033[0m"

# config files
cp /Users/Truong/.vimrc /Users/Truong/WSP/github/dotfiles/
cp /Users/Truong/.zshrc /Users/Truong/WSP/github/dotfiles/

# script files
cp -r /Users/Truong/Script/* /Users/Truong/WSP/github/dotfiles/Scripts/

cd /Users/Truong/WSP/github/dotfiles/

echo "\033[0;33m ==> Fetching origin changes \033[0m"
git pull 

echo "\033[0;33m ==> Files changes status \033[0m"
git status 

echo "\033[0;33m ==> Adding files \033[0m"
git add --all
git status

commitMsg="update dotfiles, date: $nowDate - $nowDate" 
echo "\033[0;33m ==> Committing files with msg: \033[0m \033[32m $commitMsg \033[0m"
git commit -m "$commitMsg"

echo "\033[0;33m ==> Pushing to github \033[0m"
git push origin master

echo "\033[0;31m ==> Finished! \033[0m"
