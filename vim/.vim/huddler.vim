":function! MyFunc(arg1)
":	echo a:arg1
":endfunction

" using args from function sig must be prepended with a:
"
"function! redefines the function
"
" ex. command! -nargs=1 MyFunc call MyFunc(<q-args>)
"command! -nargs=1 1 and only 1 arg
"command! -nargs=* any number of args
"command! -nargs=? 0 or more args 
"command! -nargs=+ 1 or more args?
"
set sessionoptions-=help

let g:session_persist_globals = ['&sessionoptions']
let g:session_autosave = 1
let g:session_autoload = 1
call add(g:session_persist_globals, 'g:session_autoload')
call add(g:session_persist_globals, 'g:session_autosave')
call add(g:session_persist_globals, 'g:session_default_to_last')
call add(g:session_persist_globals, 'g:session_session_persist_globals')
