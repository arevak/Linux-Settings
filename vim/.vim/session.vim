set sessionoptions-=help

let g:session_persist_globals = ['&sessionoptions']
let g:session_autosave = 1
let g:session_autoload = 1
call add(g:session_persist_globals, 'g:session_autoload')
call add(g:session_persist_globals, 'g:session_autosave')
call add(g:session_persist_globals, 'g:session_default_to_last')
call add(g:session_persist_globals, 'g:session_session_persist_globals')
