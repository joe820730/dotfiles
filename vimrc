set autoindent
set cindent
set smartindent
set linebreak
syntax on
set expandtab
set tabstop=8
set shiftwidth=8
set number
set ruler
set noexpandtab
set colorcolumn=80
set list
set listchars=tab:»-
colorscheme malokai
autocmd FileType make setlocal noexpandtab

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    call vundle#end()
    filetype plugin indent on

