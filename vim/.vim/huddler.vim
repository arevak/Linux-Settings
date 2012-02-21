:function! MyFunc(arg1)
:	echo a:arg1
:endfunction

" using args from function sig must be prepended with a:
"
"function! redefines the function
"
" ex. command! -nargs=1 MyFunc call MyFunc(<q-args>)
"command! -nargs=1 1 and only 1 arg
"command! -nargs=* any number of args
"command! -nargs=? 0 or more args 
"command! -nargs=+ 1 or more args?
