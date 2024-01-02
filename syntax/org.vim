if exists('b:current_syntax')
  finish
endif

" Hyperlinks: {{{
syntax match hyperlink	"\[\{2}[^][]*\(\]\[[^][]*\)\?\]\{2}" contains=hyperlinkBracketsLeft,hyperlinkURL,hyperlinkBracketsRight containedin=ALL
syntax match hyperlinkBracketsLeft	contained "\[\{2}"     conceal
syntax match hyperlinkURL				    contained "[^][]*\]\[" conceal
syntax match hyperlinkBracketsRight	contained "\]\{2}"     conceal
hi def link hyperlink Underlined
" }}}

let b:current_syntax = 'org'
