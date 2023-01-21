#!/bin/bash
TARGET=~/.zshrc
sed -e 's/=\"robbyrussell/=\"murilasso/g' ~/.oh-my-zsh/templates/zshrc.zsh-template > $TARGET 
echo -e "if [ \"\$COLORTERM\" = \"gnome-terminal\" ]; then\n  export TERM=xterm-256color\nfi\n[ -n \"\$TMUX\" ] && export TERM=screen-256color" >> $TARGET
