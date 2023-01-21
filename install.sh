#!/bin/bash
is_root () {
    return $(id -u)
}

has_sudo() {
    local prompt

    prompt=$(sudo -nv 2>&1)
    if [ $? -eq 0 ]; then
        echo "has_sudo__pass_set"
        return 0
    elif echo $prompt | grep -q '^sudo:'; then
        echo "has_sudo__needs_pass"
        return 0
    else
        return 1
    fi
}

has_sudo

if [[ $? -eq 0 ]];
then
    echo "Install packages 'git vim tmux build-essential'"
    sudo apt install git vim tmux build-essential;
    sudo hwclock --systohc --localtime;
fi

# Vim config
mkdir ~/.vim
mkdir ~/.vim/colors
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#git clone https://github.com/kiddos/malokai.vim.git ~/.vim/malokai.vim
#ln -s ~/.vim/malokai.vim/colors/malokai.vim ~/.vim/colors/malokai.vim
cp ./malokai.vim ~/.vim/colors/malokai.vim
wget https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh
if [[ -f $HOME/.vimrc ]]
then
    cp $HOME/.vimrc $HOME/.vimrc.bak
fi
cp ./vimrc $HOME/.vimrc

# Bash config
if [[ -f $HOME/.bashrc ]]
then
    cp $HOME/.bashrc $HOME/.bashrc.bak
fi
cp ./bashrc $HOME/.bashrc
mv git-prompt.sh ~/.git-prompt.sh

# Zsh config
git clone https://github.com/ohmyzsh/oh-my-zsh.git ~/.oh-my-zsh
# if [[ -f $HOME/.zshrc ]]
# then
#     cp $HOME/.zshrc $HOME/.zshrc.bak
#     cp ./zshrc $HOME/.zshrc
# fi
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
./zshsetup.sh

# Tmux config
if [[ -f $HOME/.tmux.conf ]]
then
    cp $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi
cp ./tmux.conf $HOME/.tmux.conf
