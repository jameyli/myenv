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

2. [vim]
=======

a. install [vim]
--------------

on MacOX

    brew install vim
or

    hg clone hg clone https://vim.googlecode.com/hg/vim
    cp and exec "build_vim.sh"

b. install deps
-------------------

use brew or tar:
* [clang] for [YCM]
* [ctags] for c/c++ tagbar

use go get:
* [gotags] for go tagbar
* [gocode] for go complete
* [godef] for go goto define


c. install scripts
--------------------

shell in any dir, do:

    vim
    :BundleUpdate

if use [YCM]

    cd ~/.vim/vimfile/bundle/YouCompleteMe
    ./install.sh --clang-completer --system-libclang

c. others
-----------
配置文件直接可以使用
* [vimrc](vim/vimrc)   基础设置
* [vimrc_bundle.vim](vim/vimrc_bundle.vim)   插件管理

d. 主要插件简介
------------

* [gmarik/Vundle.vim]  插件管理
* [Valloric/YouCompleteMe] c-family/python 代码补全
* [scrooloose/nerdtree] 目录
* [scrooloose/nerdcommenter] 注释
* [kien/ctrlp.vim] 快速模糊查找
* [majutsushi/tagbar]
* [bling/vim-airline]

3. script
==========

* git_diff_wrapper
* svn_diff_wrapper


[homebrew]:http://brew.sh/
[zsh]:http://www.zsh.org/
[vim]:http://www.vim.org/
[clang]:http://clang.llvm.org/
[ctags]:http://ctags.sourceforge.net/
[gocode]:https://github.com/nsf/gocode
[godef]:



[gmarik/Vundle.vim]:https://github.com/gmarik/Vundle.vim
[Valloric/YouCompleteMe]:https://github.com/Valloric/YouCompleteMe
[YCM]:https://github.com/Valloric/YouCompleteMe
[SirVer/ultisnips]:https://github.com/SirVer/ultisnips
[honza/vim-snippets]:https://github.com/honza/vim-snippets
[scrooloose/nerdtree]:https://github.com/scrooloose/nerdtree
[scrooloose/nerdcommenter]:https://github.com/scrooloose/nerdcommenter
[kien/ctrlp.vim]:https://github.com/kien/ctrlp.vim
[tpope/vim-surround]:https://github.com/tpope/vim-surround
[Lokaltog/vim-easymotion]:https://github.com/Lokaltog/vim-easymotion
[majutsushi/tagbar]:https://github.com/majutsushi/tagbar
[Raimondi/delimitMate]:https://github.com/Raimondi/delimitMate
[plasticboy/vim-markdown]:https://github.com/plasticboy/vim-markdown
[rizzatti/funcoo.vim]:https://github.com/rizzatti/funcoo.vim
[rizzatti/dash.vim]:https://github.com/rizzatti/dash.vim
[bling/vim-airline]:https://github.com/bling/vim-airline
[chrisbra/csv.vim]:https://github.com/chrisbra/csv.vim
[tpope/vim-fugitive]:https://github.com/tpope/vim-fugitive
[nsf/gocode]:https://github.com/nsf/gocode
[dgryski/vim-godef]:https://github.com/dgryski/vim-godef
[lucius]:https://github.com/
[a.vim]:https://github.com/
[grep.vim]:https://github.com/
[mru.vim]:https://github.com/
[DoxygenToolkit.vim]:https://github.com/
[TaskList.vim]:https://github.com/
[LargeFile]:https://github.com/
[fencview.vim]:https://github.com/

