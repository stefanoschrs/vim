call pathogen#infect()
call pathogen#helptags()


"""""""""""""
""" General "
"""""""""""""
syntax enable

set encoding=utf-8

""" swap files location
set bdir-=.
set bdir+=/tmp
set dir-=.
set dir+=/tmp

""" Indendation
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

""" Line numbers
nnoremap <C-n> :call NumberTriToggle()<cr>
autocmd InsertEnter * :set number
autocmd InsertLeave * :set number!


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
let g:syntastic_javascript_checkers = ['eslint']

""" NERDTree Plugin
map <C-\> :NERDTreeToggle<CR>


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









"""OLD"""

""set background=dark
""colorscheme solarized
"
"set number
"set relativenumber
"
"
"filetype plugin indent on
"
"" User Mappings
":nmap <F2> :set nu!<CR> :set rnu!<CR>
"
"" Split navigation
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"
"
"" Python PEP8 rules
""au BufNewFile,BufRead *.py
""   \ set tabstop=4
""   \ set softtabstop=4
""   \ set shiftwidth=4
""   \ set textwidth=79
""   \ set expandtab
""   \ set autoindent
""   \ set fileformat=uni
"
""" Flag Unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.go,*.js,*.css,*.scss,*.ejs,*.html,*.sh match BadWhitespace /\s\+$/
"
"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a Preview'
