#!/bin/bash
# Installs Android Studio configs into your user configs.

echo "Installing code style configs..."

for i in $HOME/Library/Preferences/AndroidStudio*
do
  if [ -d $i ]; then
    mkdir -p $i/codestyles
    cp -frv ivanfoong.xml $i/codestyles
  fi
done

echo "Done."
echo ""
echo "Restart Android Studio, go to preferences, and apply 'ivanfoong'"
