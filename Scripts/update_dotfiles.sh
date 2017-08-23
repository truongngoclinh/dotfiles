# script for updating dotfiles to github
now="$(date +%d/%m/%Y)"
echo "\033[0;91m =>> Starting... [0m"
echo "\033[0;33m ==> Moving dotfiles to local repo [0m"

# config files
cp /Users/Truong/.vimrc /Users/Truong/WSP/github/dotfiles/
cp /Users/Truong/.zshrc /Users/Truong/WSP/github/dotfiles/

# script files
cp /Users/Truong/Script/update_dotfiles.sh /Users/Truong/WSP/github/dotfiles/Scripts/

cd /Users/Truong/WSP/github/dotfiles/

echo "\033[0;33m ==> Fetching origin changes [0m"
git pull 

echo "\033[0;33m ==> Files changes status [0m"
git status 

echo "\033[0;33m ==> Adding files [0m"
git add --all
git status

echo "\033[0;33m ==> Committing files [0m"
git commit -m "update dotfiles, date: $now"

echo "\033[0;33m ==> Pushing to github [0m"
git push origin master

echo "\033[0;91m ==> Finished! [0m"
