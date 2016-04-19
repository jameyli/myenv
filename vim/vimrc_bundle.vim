" vundle plugin manager
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/vimfiles/Vundle.vim/
call vundle#rc('~/.vim/vimfiles/bundle')

" golang
set rtp+=/usr/local/homebrew/opt/go/libexec/misc/vim
au BufRead,BufNewFile *.go set filetype=go
 " au FileType go au BufWritePre <buffer> Fmt

"""""""""""""git repo"""""""""""""""""

Plugin 'Valloric/YouCompleteMe'
" YCM {{{
nmap <silent> <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/dot_ycm_extra_conf.py'
""Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
set cot="menu"

let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1

" in .go just for ultisnips
let g:ycm_filetype_whitelist = {
            \'c': 1,
            \'cpp': 1,
            \'objc': 1,
            \'cs': 1,
            \'go': 1,
            \'python': 1
            \}

"}}}

Plugin 'SirVer/ultisnips'
" ultisnips {{{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsListTrigger="iI"
let g:UltiSnipsJumpForwardTrigger="nn"
let g:UltiSnipsJumpBackwardTrigger="pp"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"}}}

" Snippets are separated from the engine. Add this if you want them:
Bundle 'honza/vim-snippets'

Bundle "docunext/closetag.vim"

Plugin 'scrooloose/nerdtree'
" NERD tree {{{
" Set the window position
let g:NERDTreeWinPos = "right"
" Exit vim, if only the NERDTree window is present. If there is more than one tab
" present, close current tab.
let g:NERDTreeExitOnlyWindow = 1
" Whether to open NERDtree or not in new tab, when user presses 't' or 'T' on
" a file or bookmark.
let g:NERDTreeFollowOpenInNewTab = 0
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 50

nmap <silent> <unique> <Leader>n :NERDTreeToggle<CR>
" command 'NERDTree' will refresh current directory.
nmap <silent> <unique> <Leader>N :NERDTree<CR>
" }}}

Plugin 'scrooloose/nerdcommenter'
" NERD_commenter {{{
let g:NERDCreateDefaultMappings = 0
let g:NERDMenuMode = 0
let g:NERDSpaceDelims = 1
nmap <silent> <Leader>cc <plug>NERDCommenterAlignLeft
vmap <silent> <Leader>cc <plug>NERDCommenterAlignLeft
nmap <silent> <Leader>cu <plug>NERDCommenterUncomment
vmap <silent> <Leader>cu <plug>NERDCommenterUncomment
" }}}

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'

Plugin 'Lokaltog/vim-easymotion'
" Easymotion {{{
map <Leader>h <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
"}}}

Plugin 'kshenoy/vim-signature'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'szw/vim-ctrlspace'

Plugin 'majutsushi/tagbar'
" Tagbar {{{
" Key mappings for toggling tagbar window
nmap <silent> <unique> <Leader>t :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/homebrew/bin/ctags'
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_autoshowtag = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" }}}

Plugin 'Raimondi/delimitMate'
" delimitMate {{{
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
au FileType python let b:delimitMate_nesting_quotes = ['"']
au FileType html let b:delimitMate_quotes = "\" '"
let g:delimitMate_expand_cr = 1
let g:delimitMate_balance_matchpairs = 1
" }}}

Plugin 'plasticboy/vim-markdown'

 " " mac only
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
" Plugin - dash {{{
" Mac Only
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings for toggling tagbar window
nmap <silent> <unique> <Leader>d :Dash<CR>

" End of Dash }}}

Bundle 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" airline {{{
let g:airline#extensions#tabline#enabled = 1
 " let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#fnamemod = ':p:t'
let g:airline#extensions#tabline#show_tab_type = 0

let g:airline_theme="badwolf"
let g:airline#extensions#tagbar#flags = 's'
"}}}

Bundle 'chrisbra/csv.vim'

 " Bundle 'yakiang/excel.vim'

Bundle 'tpope/vim-fugitive'

 " Bundle 'nsf/gocode', {'rtp': 'vim/'}
 " Bundle 'dgryski/vim-godef'
 " let g:godef_same_file_in_same_window=1
 " let g:godef_split=0
 " Bundle 'fatih/vim-go'
"""""""""""""vim scripts"""""""""""""""""
Plugin 'lucius'
colo lucius
LuciusDark

Plugin 'a.vim'
" a.vim {{{
let g:alternateExtensions_h = "cpp,c,cc"
let g:alternateExtensions_H = "CPP,C,CC"
let g:alternateExtensions_cpp = "h,hpp"
let g:alternateExtensions_CPP = "H,HPP"
let g:alternateExtensions_c = "h"
let g:alternateExtensions_C = "H"
let g:alternateExtensions_cxx = "h"
let g:alternateSearchPath = 'sfr:.,sfr:../src,sfr:../include'
"}}}

Plugin 'grep.vim'
Plugin 'mru.vim'
" MRU {{{
let g:MRU_Add_Menu = 0

" XXX: Change it. It's just for my environment.
if has('mac')
    let MRU_Exclude_Files = '^/private/var/folders/.*'
elseif has('win32') || has('win64')
    let MRU_Exclude_Files = '^\(h\|H\):\(/\|\\\)temp\(/\|\\\).*'
else
    let MRU_Exclude_Files = '^/.vim_tmp/.*\|^/var/tmp/.*'
endif

nnoremap <silent> <unique> <Leader>m :MRU<CR>
" }}}

Plugin 'DoxygenToolkit.vim'
" DoxygenToolkit {{{
" Load doxygen syntax file for c/cpp/idl files
let g:load_doxygen_syntax = 1
let g:DoxygenToolkit_commentType = "C"
"let g:DoxygenToolkit_dateTag = "@date:   "
" XXX: Change it. It's just for my environment.
let g:DoxygenToolkit_authorName = "xiaoyaozi <xiaoyaozi2016 AT qq DOT com>"
let g:DoxygenToolkit_versionString = ""
let g:DoxygenToolkit_versionTag = ""
let g:DoxygenToolkit_briefTag_pre = "@brief:  "
let g:DoxygenToolkit_fileTag = "@file:   "
let g:DoxygenToolkit_authorTag = "@author: "
let g:DoxygenToolkit_blockTag = "@name: "
let g:DoxygenToolkit_paramTag_pre = "@param  "
let g:DoxygenToolkit_returnTag = "@return:  "
let g:DoxygenToolkit_classTag = "@class: "
" }}}

Plugin 'TaskList.vim'
" tasklist {{{
map <unique> <Leader>T <Plug>TaskList
let g:tlTokenList = ['FIXME', 'TODO', 'NOTICE']
"}}}

Plugin 'LargeFile'
Plugin 'fencview.vim'

" Plugin - bufexplorer {{{
" http://www.vim.org/scripts/script.php?script_id=42
let g:bufExplorerDefaultHelp=0
let g:bufExplorerSortBy='name'
let g:bufExplorerShowDirectories=0
" }}}

" Plugin - matchit {{{
" Since 'matchit' script is included in standard distribution, only need to 'source' it.
:source $VIMRUNTIME/macros/matchit.vim
" }}}

" Plugin - SyntaxAttr {{{
" http://www.vim.org/scripts/script.php?script_id=383
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <unique> <Leader>S :call SyntaxAttr()<CR>
" End of SyntaxAttr }}}

Plugin 'toyamarinyon/vim-swift'

Plugin 'ryanss/vim-hackernews'

 " Bundle 'https://github.com/neilagabriel/vim-geeknote'
Bundle 'altercation/vim-colors-solarized'

set nocompatible
filetype plugin indent on     " required

" vim: set et sw=4 ts=4 fdm=marker ff=unix:
