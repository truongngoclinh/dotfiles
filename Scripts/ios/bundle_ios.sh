#/bin/bash

cd ../ocha-crm-rn && react-native bundle --platform ios --dev false --entry-file index.dev.js --bundle-output ../OchaCRM/ReactNative/JSBundle/main.jsbundle --assets-dest ../OchaCRM/ReactNative/JSBundle
