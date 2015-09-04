if exists("b:current_syntax")
  finish
endif

syntax match pollenIdentifiers "\v◊[^{\[\(]*"
syntax match pollenDelimiters "\v[\{\}\[\]\(\)]"
syntax match pollenLang "\v^#.*$"
syntax region pollenStrings start=/\v"/ skip=/\v\\./ end=/\v"/

" How would I do this: highlight ◊ only if it's followed by letters, but only
" highlight the letters?
" syntax match pollenIdentifiers "\v◊([a-z]+)"

highlight link pollenIdentifiers Identifier
highlight link pollenDelimiters Delimiter
highlight link pollenStrings String
highlight link pollenLang PreProc

" echom "Our syntax highlighting code has been run."

let b:current_syntax = "pollen"

