call pathogen#infect()
call pathogen#helptags()

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

" set backspace=indent,eol,start
" set smartindent
" set autoindent
set nowrap
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

colorscheme xoria256

:filetype plugin on

source $HOME/.vim/mappings.vim
