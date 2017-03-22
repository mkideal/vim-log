" augroup filetype
autocmd BufNewFile,BufRead *.log setfiletype log
autocmd BufNewFile,BufRead *.log.txt setfiletype log
autocmd BufNewFile,BufRead *.log.[0-9]+ setfiletype log
" augroup end
"

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

syn region logTrace start="^\[T" end="$"
syn region logDebug start="^\[D" end="$"
syn region logInfo  start="^\[I" end="$"
syn region logWarn  start="^\[W" end="$"
syn region logError start="^\[E" end="$"
syn region logFatal start="^\[F" end="$"

" highlighting
"
hi def logTrace ctermfg=242 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi def logInfo ctermfg=81 guifg=#66d9ef guibg=bg gui=italic
hi def logWarn ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE 
hi def logError ctermfg=161 guifg=#f92672 gui=italic
hi def link logFatal Error

let b:current_syntax = "log"
