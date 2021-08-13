#!/usr/bin/env bash


# check if repo was cloned into the correct directory
if [ $PWD != "$HOME/Documents/dotfiles" ]; then
    printf "Oops, wrong directory! Cloning into ~/Documents/dotfiles.\n"
    exit
fi

# check if all necessary files for installation are present
if [ ! -f packages/fedora-install.txt ]; then
    printf "Installation stopped: packages/fedora-install.txt not found.\n"
    exit
fi
if [ ! -f packages/pip.txt ]; then
    printf "Installation stopped: packages/pip.txt not found.\n"
    exit
fi
if [ ! -f packages/fedora-uninstall.txt ]; then
    printf "Installation stopped: packages/fedora-uninstall.txt not found.\n"
    exit
fi


# install listed packages from official repos
printf "Installing packages from official repos...\n"
sudo dnf install $(cat packages/fedora-install.txt)


# move existing files into backup directory
printf "\nCreating backups...\n"

if [ ! -d "backup" ]; then
    mkdir backup
fi

files_to_move=(
    "$HOME/.bashrc"
    "$HOME/.gitconfig"
    "$HOME/.profile"
    "$HOME/.vimrc"
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
python3 -m pip install -r packages/pip.txt --user >/dev/null


# remove unnecessary default packages
printf "\nRemoving unnecessary default packages...\n"
sudo dnf remove $(cat packages/fedora-uninstall.txt)


# clean up any extra files
printf "\nFinal clean up...\n\n"
if [ -f $HOME/.viminfo ]; then
    rm $HOME/.viminfo
fi
if [ -f $HOME/.bash_logout ]; then
    rm $HOME/.bash_logout
fi
if [ -f $HOME/.bash_profile ]; then
    rm $HOME/.bash_profile
fi


# finished
printf "Dotfiles setup done.\n"
