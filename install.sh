#!/usr/bin/env bash

### Used for installation of dotfiles. (https://github.com/kangzhiz/dotfiles)

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

# Create vim undo dir.
if [ ! -d $HOME/.vim/undo ]; then
    mkdir $HOME/.vim/undo
fi

# Finished.
echo "Done."
