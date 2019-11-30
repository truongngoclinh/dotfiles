# script for updating dotfiles to github

nowDate="$(date +%d/%m/%Y)"
nowHours="$(date +%T)"

echo "\033[0;32m ==> Starting... \033[0m"
echo "\033[0;33m ==> Moving dotfiles to local repo \033[0m"

# config files
cp /Users/linh.truong/.vimrc /Users/linh.truong/WSP/github/dotfiles/
cp /Users/linh.truong/.zshrc /Users/linh.truong/WSP/github/dotfiles/
cp /Users/linh.truong/.ideavimrc /Users/linh.truong/WSP/github/dotfiles/
cp /Users/linh.truong/.xvimrc /Users/linh.truong/WSP/github/dotfiles/
cp /Users/linh.truong/.vimrc.keymap /Users/linh.truong/WSP/github/dotfiles/
cp -rf /Users/linh.truong/.emacs.d /Users/linh.truong/WSP/github/dotfiles/
cp /Users/linh.truong/Library/Application Support/Code - Insiders/User/keybindings.json

# vs code
#cp /Users/linh.truong/Library/Application\ Support/Code/User/settings.json /Users/linh.truong/WSP/github/dotfiles/vs_settings.json
cp /Users/linh.truong/Library/Application\ Support/Code\ - Insiders/User/keybindings.json /Users/linh.truong/WSP/github/dotfiles/vs_keybindings.json
cp /Users/linh.truong/Library/Application\ Support/Code\ - Insiders/User/settings.json /Users/linh.truong/WSP/github/dotfiles/vs_settings.json

# script files
cp -r /Users/linh.truong/Script/* /Users/linh.truong/WSP/github/dotfiles/Scripts/

cd /Users/linh.truong/WSP/github/dotfiles/

echo "\033[0;33m ==> Fetching origin changes \033[0m"
git pull 

echo "\033[0;33m ==> Files changes status \033[0m"
git status 

echo "\033[0;33m ==> Adding files \033[0m"
git add --all
git status

commitMsg="update dotfiles, date: $nowDate - $nowHours" 
echo "\033[0;33m ==> Committing files with msg: \033[0m \033[32m $commitMsg \033[0m"
git commit -m "$commitMsg"

echo "\033[0;33m ==> Pushing to github \033[0m"
git push origin master

echo "\033[0;32m ==> Finished! \033[0m"
