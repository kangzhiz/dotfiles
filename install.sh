#!/usr/bin/env bash


# check if repo was cloned into the correct directory
if [ $PWD != "$HOME/Documents/dotfiles" ]; then
    printf "Oops, wrong directory! Cloning into ~/Documents/dotfiles.\n"
    exit
fi


# install listed packages from official repos
printf "\nInstalling packages from official repos...\n"

if [ -f packages/fedora.txt ]; then
    sudo dnf install $(cat packages/fedora.txt)
else
    printf "\nError: packages/fedora.txt not found.\n"
    exit
fi


# move existing files into backup directory
printf "\nCreating backups...\n"

if [ ! -d "backup" ]; then
    mkdir backup
fi

files_to_move=(
    "$HOME/.bashrc"
    "$HOME/.vimrc"
    "$HOME/.gitconfig"
)

for file in ${files_to_move[@]}
do
    if [ -f $file ]; then
        mv $file backup
    fi
done


# run stow to create symlinks
printf "\nStowing files...\n"
stow -t $HOME stow


# install python packages
printf "\nInstalling Python packages...\n"

if [ -f packages/python.txt ]; then
    python3 -m pip install -r packages/python.txt --user >/dev/null
else
    printf "\nError: packages/python.txt not found.\n"
    exit
fi


# remove unnecessary default packages
printf "\nRemoving unnecessary default packages...\n"

if [ -f packages/uninstall.txt ]; then
    sudo dnf remove $(cat packages/uninstall.txt)
else
    printf "\nError: packages/uninstall.txt not found.\n"
    exit
fi


# remove viminfo if it exists
printf "\nFinal cleanup...\n\n"
if [ -f $HOME/.viminfo ]; then
    rm $HOME/.viminfo
fi


# finished
printf "Dotfiles setup done.\n\n"
