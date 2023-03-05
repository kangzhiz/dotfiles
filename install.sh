#!/usr/bin/env bash


DOTFILES_DIR="$HOME/Documents/dotfiles"

# check if repo was cloned into the correct directory
if [ $PWD != $DOTFILES_DIR ]; then
    printf "Oops, wrong directory! Clone into ~/Documents/dotfiles.\n"
    exit
fi

# install homebrew packages
if [ -f $DOTFILES_DIR/scripts/brew-install-all ]; then
    source $DOTFILES_DIR/scripts/brew-install-all
else
    printf "Error! \"scripts/brew-install-all\" is missing.\n"
    exit
fi

# install dotfiles
if [ -f $DOTFILES_DIR/scripts/stow-dotfiles ]; then
    source $DOTFILES_DIR/scripts/stow-dotfiles
else
    printf "Error! \"scripts/stow-dotfiles\" is missing.\n"
    exit
fi

# clean up home directory
if [ -f $DOTFILES_DIR/scripts/clean-home ]; then
    source $DOTFILES_DIR/scripts/clean-home
else
    printf "Error! \"scripts/clean-home\" is missing.\n"
    exit
fi

printf "Dotfiles setup done.\n"
