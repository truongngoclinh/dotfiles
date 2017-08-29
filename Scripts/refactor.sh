#!/bin/bash
echo "\033[0;31m Running refactor script... \033[0m"
fortune | cowsay | lolcat

filesPath=../ObjectiveCBaseApplication/Base/Services/*
dirPath=../ObjectiveCBaseApplication/Base/Services/

perl -pi -w -e 's/cp_/b_/g;' $filesPath
perl -pi -w -e 's/CP/B/g;' $filesPath
perl -pi -w -e 's/yangzhixing/Linh/g;' $filesPath
perl -pi -w -e 's/Andrew Eng/Linh/g;' $filesPath
perl -pi -w -e 's/Garena/smvn/g;' $filesPath

cd $dirPath
for f in *; do mv "$f" "${f/CP/B}"; done

echo "\033[0;31m Finished! \033[0m"
