#!/bin/bash

git submodule init
git submodule update
git submodule update --recursive

# Bash
ln -s bash/git-prompt.sh ~/.git-prompt.sh
ln -s bash/git-completion.bash ~/.git-completion.bash

# Set Desktop Background
xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg

# emacs
cp emacs/emacs ~/.emacs

# vim
mkdir vim/plugin
mkdir vim/doc

cp submodules/supertab/doc/supertab.txt vim/doc/supertab.txt
cp submodules/supertab/plugin/supertab.vim vim/plugin/supertab.vim

cp submodules/bufexplorer/doc/bufexplorer.txt vim/doc/bufexplorer.txt
cp submodules/bufexplorer/plugin/bufexplorer.vim vim/plugin/bufexplorer.vim

# git
cp git/gitconfig ~/.gitconfig

# tig
ln -s tig/tigrc ~/.tigrc

# tmux
ln -s tmux/tmux.conf ~/.tmux.conf
