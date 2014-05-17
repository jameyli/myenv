myenv
=====

开发环境设置
My Develop Environment Init

主要以MacOX为主, 大多数情况下在linux也是可以正常运行的。

0. How to Insall?
===================

first
------

    git clone git@github.com:jameyli/myenv.git
    cd myenv
    git submodule update
    ./build_env.sh

second
------
install brew On MacOX

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

当然所有使用brew安装的软件都可以使用源码来安装

1. shell
==========

a. install zsh
---------------

    brew install zsh
    chsh -s /usr/bin/zsh

如果不用zsh 可以略去

2. vim
=======

a. install vim
--------------

on MacOX

    brew install vim
or

    hg clone hg clone https://vim.googlecode.com/hg/vim
    cp and exec "build_vim.sh"

b. install deps
-------------------

use brew or tar:
* clang for YCM(YouCompleteMe)
* ctags for c/c++ tagbar

use go get:
* gotags for go tagbar
* gocode for go complete
* godef for go goto define


c. install scripts
--------------------

shell in any dir, do:

    vim
    :BundleUpdate

if use YCM

    cd ~/.vim/vimfile/bundle/YouCompleteMe
    ./install.sh --clang-completer --system-libclang

c. others
-----------
配置文件直接可以使用
* vimrc   基础设置
* vimrc_bundle.vim    插件管理

3. script
==========

* git_diff_wrapper
* svn_diff_wrapper
