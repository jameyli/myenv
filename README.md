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
install [homebrew] On MacOX

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

当然所有使用brew安装的软件都可以使用源码来安装

1. shell
==========

a. install [zsh]
---------------

    brew install zsh
    chsh -s /usr/bin/zsh

如果不用[zsh] 可以略去

2. vim
=======

[Go Here](vim/README.md)

3. script
==========

* git_diff_wrapper
* svn_diff_wrapper


[homebrew]:http://brew.sh/
[zsh]:http://www.zsh.org/


