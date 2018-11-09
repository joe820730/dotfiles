#!/bin/sh
sudo apt install git vim tmux
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir ~/.vim
mkdir ~/.vim/colors
git clone https://github.com/kiddos/malokai.vim.git ~/.vim/malokai.vim
ln -s ~/.vim/malokai.vim/colors/malokai.vim ~/.vim.colors/malokai.vim
cd ~
wget https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh
mv git-prompt.sh .git-prompt.sh
