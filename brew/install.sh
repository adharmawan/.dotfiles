#!/bin/sh

# Homebrew

if test ! $(which brew); then
  echo "\nLooks like you don't have homebrew. Installing it for you...\n"
  echo ""
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


if test $(which brew); then
    echo "\nYou have brew installed. Moving on..."
fi

brew bundle --file=$HOME/.dotfiles/brew/Brewfile
