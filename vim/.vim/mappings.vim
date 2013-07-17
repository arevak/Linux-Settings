:nmap <F11> :tabprev<CR>
:map <F11> :tabprev<CR>
:imap <F11> <Esc>:tabprev<CR>i

:nmap <F12> :tabnext<CR>
:map <F12> :tabnext<CR>
:imap <F12> <Esc>:tabnext<CR>i

:nmap <C-n> :tabnew<Space>
:imap <C-n> <Esc>:tabnew<Space>

:nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
:inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
compiler perlcritic
map <F5> :silent<space>make<space><cr>:redraw!<cr>
