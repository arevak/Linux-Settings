set sessionoptions-=help

let g:session_autosave = 'no'
let g:session_autoload = 'yes'
let g:session_default_to_last = 'yes'
let g:session_persist_globals = ['&sessionoptions']
call add(g:session_persist_globals, 'g:session_autoload')
call add(g:session_persist_globals, 'g:session_autosave')
call add(g:session_persist_globals, 'g:session_default_to_last')
call add(g:session_persist_globals, 'g:session_session_persist_globals')
