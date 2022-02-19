#!/usr/bin/env bash


# check if repo was cloned into the correct directory
if [ $PWD != "$HOME/dotfiles" ]; then
    printf "Oops, wrong directory! Cloning into ~/dotfiles.\n"
    exit
fi

# check if all necessary files for installation are present
if [ ! -f packages/ubuntu.txt ]; then
    printf "Installation stopped: packages/ubuntu.txt not found.\n"
    exit
fi
if [ ! -f packages/pip.txt ]; then
    printf "Installation stopped: packages/pip.txt not found.\n"
    exit
fi

# install listed packages from official repos
printf "Installing packages from official repos...\n"
sudo apt install $(cat packages/ubuntu.txt)


# move existing files into backup directory
printf "\nCreating backups...\n"

if [ ! -d "backups" ]; then
    mkdir backups
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
        mv $file backups
    fi
done


# run stow to create symlinks
printf "\nStowing files...\n"
stow -t $HOME stow


# install python packages
printf "\nInstalling Python packages...\n"
python3 -m pip install -r packages/pip.txt --user >/dev/null


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
