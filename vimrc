"""""""""""""
""" General "
"""""""""""""
call pathogen#infect()
call pathogen#helptags()




"""""""""""""""""""
""" File Settings "
"""""""""""""""""""
filetype plugin indent on

set encoding=utf-8

""" swap files location
set bdir-=.
set bdir+=/tmp
set dir-=.
set dir+=/tmp



""""""""""""
""" Editor "
""""""""""""
syntax enable

set t_Co=256

""" Trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

""" Line numbers
nnoremap <C-n> :call NumberTriToggle()<cr>
autocmd InsertEnter * :set number
autocmd InsertLeave * :set number!

""" Indendation
set expandtab
set shiftwidth=2
set softtabstop=2

""" Folding
set foldmethod=indent
hi Folded ctermbg=none
hi Folded ctermfg=0



"""""""""""""
""" Plugins "
"""""""""""""
""" vim-airline
set laststatus=2

""" syntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']

""" NERDTree Plugin
map <C-\> :NERDTreeToggle<CR>

""" vim-javascript
let g:javascript_plugin_jsdoc = 1



""""""""""""""
""" Mappings "
""""""""""""""
""" Split navigation (terminator style)
nnoremap <c-w>o <c-w>s
nnoremap <c-w>e <c-w>v




"""""""""""""""
""" Functions "
"""""""""""""""
function! NumberTriToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else 
    if(&number == 1)
      set nonumber norelativenumber
    else
      set number relativenumber
    endif
  endif
endfunc

