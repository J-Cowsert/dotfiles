## Setup 
```bash
git clone --bare https://github.com/J-Cowsert/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
echo "alias dotfiles=..." >> ~/.bashrc
source ~/.bashrc
