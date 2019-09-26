set number
syntax on
set autoindent
set hlsearch
set tabstop=4
set shiftwidth=4
set smartcase
set infercase
set nrformats=
set expandtab
set incsearch
set showmatch
set title
set encoding=utf-8
set fileencoding=utf-8
set complete+=k
set t_Co=256

autocmd FileType fortran :set dict=~/.vim/dict/f90.dict
autocmd FileType python  :set dict=~/.vim/dict/python.dict
autocmd FileType c   :set dict=~/.vim/dict/c.dict
autocmd FileType c inoremap { {<ENTER><ENTER>}<UP>
autocmd FileType cpp :set dict=~/.vim/dict/c++.dict
autocmd FileType cpp inoremap { {<ENTER><ENTER>}<UP>
autocmd FileType javascript,html :set dict=~/.vim/dict/javascript.dict
autocmd FileType html :set dict=~/.vim/dict/html.dict
autocmd FileType css :set dict=~/.vim/dict/html.dict
autocmd FileType php,ctp :set dict=~/.vim/dict/php.dict
au BufRead,BufNewFile *.txt :setfiletype text
au BufRead,BufNewFile *.e03 :setfiletype fortran
autocmd FileType text :set spell

nn <C-l> :call cursor(0,strlen(getline("."))/2)<CR>
map j gj
map k gk

inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-e> <End>

"##### Setup dein.vim #####"
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/bundles'))
    call dein#begin(expand('~/.vim/bundles'))

    let g:dein_dir = expand('~/.vim/bundles')
    let s:toml = g:dein_dir . '/dein.toml'
    let s:lazy_toml = g:dein_dir . '/dein_lazy.toml'

    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
"##### /Setup dein.vim #####
