#!/bin/bash

# about:config toolkit.legacyUserProfileCustomizations.stylesheets
curDir="$(dirname "$(readlink -f "$0")")"
PROFPATH=`grep -1 'Locked=1' ~/.mozilla/firefox/profiles.ini | grep default-release | sed s/^Default=// `
sudo mkdir -p "$HOME/.mozilla/firefox/$PROFPATH/chrome"
sudo cp $curDir/* "$HOME/.mozilla/firefox/$PROFPATH/chrome/"
sudo rm -rf "$HOME/.mozilla/firefox/$PROFPATH/user.js"
sudo cp "$curDir/user.js" "$HOME/.mozilla/firefox/$PROFPATH/"

# tridactyl
sudo curl -fsSl https://raw.githubusercontent.com/tridactyl/tridactyl/master/native/install.sh -o /tmp/trinativeinstall.sh && sudo sh /tmp/trinativeinstall.sh 1.20.4
