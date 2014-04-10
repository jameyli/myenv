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
ln -sf $PWD/dot_bashrc ~/.bashrc
ln -sf $PWD/dot_zshrc ~/.zshrc

# vim
ln -sf $PWD/vim ~/.vim
ln -sf $PWD/../vimwiki ~/vimwiki

source ~/.bashrc


