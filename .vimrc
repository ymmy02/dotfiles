set number
syntax on
set autoindent
set hlsearch
set tabstop=2
set shiftwidth=2
set smartcase
set infercase
set nrformats=
set expandtab
set incsearch
set encoding=utf-8
set fileencoding=utf-8
set complete+=k

autocmd FileType fortran :set dict=~/.vim/dict/f90.dict
autocmd FileType python  :set dict=~/.vim/dict/python.dict
autocmd FileType c   :set dict=~/.vim/dict/c.dict
autocmd FileType cpp :set dict=~/.vim/dict/c++.dict
autocmd FileType javascript,html :set dict=~/.vim/dict/javascript.dict
autocmd FileType html :set dict=~/.vim/dict/html.dict
autocmd FileType css :set dict=~/.vim/dict/html.dict
autocmd FileType php,ctp :set dict=~/.vim/dict/php.dict
au BufRead,BufNewFile *.txt :setfiletype text
autocmd FileType text :set spell

autocmd FileType html :packadd emmet-vim

map j gj
map k gk

inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap { {<ENTER><ENTER>}<UP>
