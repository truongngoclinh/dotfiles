#!/bin/bash
nowDate="$(date +%d/%m/%Y)"
nowHours="$(date +%T)"

echo "\x1B[32m Starting update mobile service langs...\x1B[0m"
echo "\x1B[33m Stash changes \x1B[0m"
git stash
git checkout test
git pull

echo "\x1B[33m Pop changes \x1B[0m"
git stash apply

cd ../cyberpay_service_mobile/cyberpay

echo "\x1B[33m Converting to mo files \x1B[0m"
python ../manage.py compilemessages

git status
git add --all
git status

commitMsg="update language files, date: $nowDate - $nowHours" 
echo "\x1B[33m Commit files with msg: \x1B[0m \x1B[32m  $commitMessage \x1B[0m"
git commit -m "$commitMessage"

git push origin `git rev-parse --abbrev-ref HEAD`
echo "\x1B[32m Finished! \x1B[0m"

