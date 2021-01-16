#!/usr/bin/env bash

# install.sh [dotfiles]
# John Zhao (https://www.kangzhiz.com)
#
# This script is used to set up my dotfiles.
# It uses GNU stow to create symlinks for each file in the 'stow' directory.
# It also sets up some other things related to my configurations.


# Check if repo was cloned into correct directory.
# Some bash variables/aliases will be broken if dotfiles is in the wrong place.
if [ $PWD != "$HOME/Documents/dotfiles" ]; then
    echo 'Oops, wrong directory! Try cloning into ~/Documents/dotfiles.'
    exit
fi

# Move existing files into backup directory.
files_to_move=(
    "$HOME/.bashrc"
    "$HOME/.vimrc"
    "$HOME/.gitconfig"
)

if [ ! -d 'stash' ]; then
    mkdir stash
fi

for file in ${files_to_move[@]}
do
    if [ -f $file ]; then
        mv $file stash
    fi
done

# Run stow to make symlinks in home directory.
stow -t $HOME stow

# Create vim undo directory.
if [ ! -d $HOME/.vim/undo ]; then
    mkdir $HOME/.vim/undo
fi

# Remove viminfo if it exists.
if [ -f $HOME/.viminfo ]; then
    rm $HOME/.viminfo
fi

# Finished.
echo "Done."
