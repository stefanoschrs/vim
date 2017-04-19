syn case ignore
syn match Tab /\(.\+[\-].\+[|]\)/ contains=TabString,TabNote,TabNoteTech

syn match TabString	contained /[\-*.|]/
syn match TabString	contained /[cdefgabh]\?[:|]/

syn match TabNote	contained /[0-9]/

syn match TabNoteTech   contained /[hpx\/]\{1}/

hi TabString    ctermfg=magenta
hi TabNote      ctermfg=green cterm=bold
hi TabNoteTech  ctermfg=yellow

let b:current_syntax = "tab"

