#!/bin/bash
# rename files in folde 
echo "\x1B[0;31m Running refactor script... \x1B[0m"

dirPath=/Users/Truong/WSP_IOS/appium_automationTest/airpay_counter_ios_automation/
#oldName="tutorial_ios"
#newName="airpay_counter_ios_automation"

oldName="test"
newName="testRename"

cd $dirPath
for f in *; do mv "$f" "${f/$oldName/$newName}"; done

echo "\x1B[0;31m Finished! \x1B[0m"
