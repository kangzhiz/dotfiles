#!/usr/bin/env bash
# ---
# This script is used to set up dotfiles.
# It uses GNU stow to create symlinks for each file in the 'stow' directory.
# It also sets up some other things related to the configs.
# ---


# check if repo was cloned into correct directory
# some bash variables/aliases will be broken if dotfiles is in the wrong place
if [ $PWD != "$HOME/Documents/dotfiles" ]; then
    echo 'Oops, wrong directory! Try cloning into ~/Documents/dotfiles.'
    exit
fi

# move existing files into backup directory
if [ ! -d 'stash' ]; then
    mkdir stash
fi

files_to_move=(
    "$HOME/.bashrc"
    "$HOME/.vimrc"
    "$HOME/.gitconfig"
)
for file in ${files_to_move[@]}
do
    if [ -f $file ]; then
        mv $file stash
    fi
done

# run stow to make symlinks in home directory
stow -t $HOME stow

# create vim undo directory
if [ ! -d $HOME/.vim/undo ]; then
    mkdir $HOME/.vim/undo
fi

# remove viminfo if it exists
if [ -f $HOME/.viminfo ]; then
    rm $HOME/.viminfo
fi

# finished
echo "Done."
