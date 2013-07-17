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
set expandtab

colorscheme xoria256

:filetype plugin on
au BufRead,BufNewFile *.pm set filetype=perl
au BufRead,BufNewFile CGI.* set filetype=perl

:let g:Perl_PerlTags = 'on'

set sessionoptions-=help

:let g:session_persist_globals = ['&sessionoptions']
:let g:session_autosave = 1
:let g:session_autoload = 1
call add(g:session_persist_globals, 'g:session_autoload')
call add(g:session_persist_globals, 'g:session_autosave')
call add(g:session_persist_globals, 'g:session_default_to_last')
call add(g:session_persist_globals, 'g:session_session_persist_globals')

source $HOME/.vim/mappings.vim
