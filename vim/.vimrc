call pathogen#infect()
call pathogen#helptags()

" set t_Co=256

" set backspace=indent,eol,start
" set smartindent
" set autoindent
set nowrap
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

colorscheme xoria256

:filetype plugin on
au BufRead,BufNewFile *.pm set filetype=perl
au BufRead,BufNewFile CGI.* set filetype=perl

:let g:Perl_PerlTags = 'on'

set sessionoptions-=help

autocmd BufWritePre * :%s/\s\+$//e

source $HOME/.vim/mappings.vim
source $HOME/.vim/session.vim
source $HOME/.vim/filemaps.vim
