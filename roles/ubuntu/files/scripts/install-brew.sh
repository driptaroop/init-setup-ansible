#!/bin/bash
SCREEN_NAME="brew_install"
CI=1 screen -S $SCREEN_NAME -dm /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
while screen -list | grep -q $SCREEN_NAME
do
    sleep 1
done
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sleep 1