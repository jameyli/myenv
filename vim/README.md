                                      .
                      ##############..... ##############
                      ##############......##############
                        ##########..........##########
                        ##########........##########
                        ##########.......##########
                        ##########.....##########..
                        ##########....##########.....
                      ..##########..##########.........
                    ....##########.#########.............
                      ..################JJJ............
                        ################.............
                        ##############.JJJ.JJJJJJJJJJJ
                        ############...JJ...JJ..JJ  JJ
                        ##########....JJ...JJ..JJ  JJ
                        ########.....JJJ..JJJ JJJ JJJ
                        ######    .........
                                    .....
                                      .



0. install [vim]
==============

on MacOX

    brew install vim
or

    hg clone hg clone https://vim.googlecode.com/hg/vim
    cp and exec "build_vim.sh"

1. install deps
===================

use brew or tar:
* [clang] for [YCM]
* [ctags] for c/c++ tagbar

use go get:
* [gotags] for go tagbar
* [gocode] for go complete
* [godef] for go goto define


2. install scripts
====================

shell in any dir, do:

    vim
    :BundleUpdate

if use [YCM]

    cd ~/.vim/vimfile/bundle/YouCompleteMe
    ./install.sh --clang-completer --system-libclang

3. others
===========
配置文件直接可以使用
* [vimrc](vimrc)   基础设置
* [vimrc_bundle.vim](vimrc_bundle.vim)   插件管理

4. 主要插件简介
------------

* [gmarik/Vundle.vim]  插件管理
* [Valloric/YouCompleteMe] c-family/python 代码补全
* [scrooloose/nerdtree] 目录
* [scrooloose/nerdcommenter] 注释
* [kien/ctrlp.vim] 快速模糊查找
* [majutsushi/tagbar]
* [bling/vim-airline]



[homebrew]:http://brew.sh/
[zsh]:http://www.zsh.org/
[vim]:http://www.vim.org/
[clang]:http://clang.llvm.org/
[ctags]:http://ctags.sourceforge.net/
[gocode]:https://github.com/nsf/gocode
[godef]:https://github.com/nsf/gocode

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

