# dotfiles

These are just some of my personal dotfiles along with a few simple bash scripts. Feel free to take a look!

Everything below is mostly for my personal reference. I'm currently using [Fedora 33 Workstation w/ GNOME](https://getfedora.org/).

### Setup

1. Clone repository: `git clone git@github.com:kangzhiz/dotfiles.git ~/Documents/main/dotfiles`
2. Remove existing files: `rm -i ~/.bashrc ~/.vimrc ~/.gitconfig`
3. Create symlinks: `(cd ~/Documents/main/dotfiles/stow && stow -t ~ bash git vim)`

### Packages *(in additional to default Fedora packages)*

* [stow](https://github.com/aspiers/stow)
* [neofetch](https://github.com/dylanaraps/neofetch)
* [fzf](https://github.com/junegunn/fzf)
* [protonvpn-cli](https://github.com/ProtonVPN/linux-cli)
* [fira-code-fonts](https://github.com/tonsky/FiraCode)
