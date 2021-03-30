#!/usr/bin/env bash


# check if repo was cloned into the correct directory
if [ $PWD != "$HOME/Documents/dotfiles" ]; then
    echo 'Oops, wrong directory! Try cloning into ~/Documents/dotfiles.'
    exit
fi

# install listed packages from official repos
if [ -f packages/fedora.txt ]; then
    sudo dnf install $(cat packages/fedora.txt)
else
    echo 'Error: packages/fedora.txt not found.'
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

# run stow to create symlinks
stow -t $HOME stow

# install python packages
if [ -f packages/python.txt ]; then
    python3 -m pip install -r packages/python.txt --user
else
    echo 'Error: packages/python.txt not found.'
    exit
fi

# remove viminfo if it exists
if [ -f $HOME/.viminfo ]; then
    rm $HOME/.viminfo
fi

# finished
echo "Dotfiles setup done."
