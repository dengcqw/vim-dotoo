if exists('g:loaded_dotoo')
  finish
endif
let g:loaded_dotoo = 1

nnoremap <silent> gA :<C-U>call dotoo#agenda#agenda()<CR>
