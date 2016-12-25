call pathogen#infect()
call pathogen#helptags()

"syntax enable
""set background=dark
""colorscheme solarized
"
"set number
"set relativenumber
"
"set bdir-=.
"set bdir+=/tmp
"set dir-=.
"set dir+=/tmp
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
"" NERDTree Plugin
"map <C-\> :NERDTreeToggle<CR>
"
"" Syntactic Plugin
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
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
"" Set encoding
"set encoding=utf-8
"
"" Flag Unnecessary Whitespace
"" au BufRead,BufNewFile *.py,*.go,*.js,*.css,*.scss,*.ejs,*.html match BadWhitespace /\s\+$/
"
"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a Preview'
