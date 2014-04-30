#! /bin/bash
###
# @file:   build_env.sh
# @author: jameyli <jameyli AT tencent DOT com>
# @date:   2013-05-03
# @brief:  初始化开发环境
#
# 开发环境主要包括：
# .bashrc / .zshrc
# vim
#
# Unix/Linux
#
# Mac OSX
#
# Windows
###

# .bash_profile
MYENV=${PWD}
echo ${MYENV}

rm -f ~/.myenv
ln -s ${MYENV} ~/.myenv

if [ `echo $SHELL | grep -e zsh` ]; then
    echo "zsh"
    rm -f ~/.zshrc
    ln -s ${MYENV}/dot_zshrc ~/.zshrc
else
    echo "bash"
    rm -f ~/.bashrc
    ln -s ${MYENV}/dot_bashrc ~/.bashrc
fi

source ${MYENV}/dot_bashrc

# vim
rm -f ~/.vim
ln -s ${MYENV}/vim ~/.vim
# ln -sf ${MYENV}/../vimwiki ~/vimwiki

#git
rm -f ~/.gitconfig
ln -s ${MYENV}/dot_gitconfig ~/.gitconfig



