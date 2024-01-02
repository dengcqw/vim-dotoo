if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

if !g:dotoo_disable_mappings
  nmap <buffer> gq :<C-U>quit<CR>
  nmap <buffer> <nowait> C <Plug>(dotoo-capture)

  if !hasmapto('<Plug>(dotoo-agenda-refresh)')
    nmap <buffer> <nowait> r <Plug>(dotoo-agenda-refresh)
  endif
  if !hasmapto('<Plug>(dotoo-agenda-save-files)')
    nmap <buffer> <nowait> s <Plug>(dotoo-agenda-save-files)
  endif
  if !hasmapto('<Plug>(dotoo-agenda-headline-move)')
    nmap <buffer> <nowait> m <Plug>(dotoo-agenda-headline-move)
  endif
  if !hasmapto('<Plug>(dotoo-agenda-headline-change-todo)')
    nmap <buffer> <nowait> c <Plug>(dotoo-agenda-headline-change-todo)
  endif
  if !hasmapto('<Plug>(dotoo-agenda-headline-undo-change)')
    nmap <buffer> <nowait> u <Plug>(dotoo-agenda-headline-undo-change)
  endif
  if !hasmapto('<Plug>(dotoo-agenda-headline-clock-start)')
    nmap <buffer> <nowait> i <Plug>(dotoo-agenda-headline-clock-start)
  endif
  if !hasmapto('<Plug>(dotoo-agenda-headline-clock-stop)')
    nmap <buffer> <nowait> o <Plug>(dotoo-agenda-headline-clock-stop)
  endif
  if !hasmapto('<Plug>(dotoo-agenda-filter)')
    nmap <buffer> <nowait> / <Plug>(dotoo-agenda-filter)
  endif

  nnoremap <buffer> <silent> <nowait> <CR> :call dotoo#agenda#goto_headline('edit')<CR>
  nnoremap <buffer> <silent> <nowait> <C-S> :call dotoo#agenda#goto_headline('split')<CR>
  nnoremap <buffer> <silent> <nowait> <C-V> :call dotoo#agenda#goto_headline('vsplit')<CR>
  nnoremap <buffer> <silent> <nowait> <C-T> :call dotoo#agenda#goto_headline('tabe')<CR>
  nnoremap <buffer> <silent> <nowait> <Tab> <C-V>
endif
