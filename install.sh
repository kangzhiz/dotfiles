#!/usr/bin/env bash


# check if repo was cloned into correct directory
if [ $PWD != "$HOME/Documents/dotfiles" ]; then
    echo 'Oops, wrong directory! Try cloning into ~/Documents/dotfiles.'
    exit
fi

# install packages from packages.txt
if [ -f packages.txt ]; then
    sudo dnf install $(cat packages.txt)
else
    echo 'Error: packages.txt not found'
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

# remove viminfo if it exists
if [ -f $HOME/.viminfo ]; then
    rm $HOME/.viminfo
fi

# finished
echo "Dotfiles setup done."
