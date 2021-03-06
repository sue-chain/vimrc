
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle Sources
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Valloric/YouCompleteMe'
Bundle 'davidhalter/jedi-vim'

Bundle 'ervandew/supertab'
Bundle "SirVer/ultisnips"
"已经自定义python代码片段库，暂时不使用vim-snippets
"Bundle 'honza/vim-snippets'

"-----------------
" Fast navigation
"-----------------
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'bufexplorer.zip'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'

"git status tip
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'

"语法高亮
Bundle "Glench/Vim-Jinja2-Syntax"


"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------

" markdown
Bundle 'tpope/vim-markdown'

"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'

filetype plugin indent on     " required!


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set encoding detection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" Enable file type detection
filetype plugin on
filetype indent on

" Enable syntax highlight and completion
syntax enable
syntax on

" Set default color scheme
if has("gui_running")
"    set gfn=WenQuanYi\ Micro\ Hei\ Mono\ 10
    color monokai
else
    color desert
endif

" Enable omni completion.
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType c setlocal omnifunc=ccomplete#Complete

noremap <F11> gggqG

" Set Omni menu colors
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff

" Set configurations
set nocompatible
set autoread
set wildmenu
set ruler
set nu
set lz
set hid
set ignorecase
set smartcase
set incsearch
set magic
set noerrorbells
set novisualbell
set showmatch
set showcmd
set title
set hlsearch
set nobackup
set nowb
set noswapfile
set fen
set expandtab
set smarttab
set lbr
set ai
set smartindent
set cindent
set wrap
set timeout
"set cursorline
"set cursorcolumn
"set confirm

set timeoutlen=500
set matchtime=2
set matchpairs+=<:>
set report=0
set shiftwidth=4
set tabstop=4
set fmr={,}
set fdm=marker
set fdl=10
"set mouse=a
set history=300
set t_Co=256
set background=dark
set ffs=unix,dos,mac
set so=7
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set laststatus=2
set completeopt=menu
set pastetoggle=<F3>
set tags=./tags,tags;$HOME

"set paste

" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn

" Set leader
let mapleader = ","
let g:mapleader = ","

" Fast Save
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
imap <leader>w <esc>:w!<cr>

" Fast reload vimrc
map <leader>s :source ~/.vimrc<cr>

" Fast format file
nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

" Fast switch tab
map <leader>to :tabnew
map <leader>tw :tabnew %<cr>
map <leader>tc :tabclose<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>te :tabedit
map <leader>tm :tabmove

" Fast adjust shift width
map <leader>s2 :set shiftwidth=2<cr>
map <leader>s4 :set shiftwidth=4<cr>

" Fast switch syntax
map <leader>1 :set syntax=cheetah<cr>
map <leader>2 :set syntax=html<cr>
map <leader>3 :set syntax=python<cr>
map <leader>4 :set syntax=javascript<cr>
map <leader>5 :set syntax=c<cr>
map <leader>6 :set syntax=java<cr>
map <leader>7 :set syntax=nginx<cr>
map <leader>8 :set syntax=perl<cr>
map <leader>9 :set syntax=vb<cr>
map <leader>$ :syntax sync fromstart<cr>

" Fast format indent of the whole file
" map <leader>g gg=G

" Fast spell checking
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>sd zw
map <leader>s? z=

" Fast remove highlight
map <silent> <leader><cr> :noh<cr>

" Fast remove windows ^M
noremap <leader>m mmHmt:%s/<c-v><cr>//ge<cr>'tzt'm

" Fast select content from current line to bottom
nnoremap <leader>v V`]

" Fast trigger plug-in
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>a :Ack
nnoremap <c-u> :GundoToggle<cr>
nnoremap <c-i> :CtrlP<cr>

" Fash run shell
map <leader><space> :!
" Fast search
"map <space> /
"map <c-space> ?

" Fast switch window
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Fast to close window
"map <c-q> <c-w>q

" Fast switch buffers
map <c-up>    :BufExplorer<CR>
map <c-left>  :bp<cr>
map <c-right> :bn<cr>
map <c-down>  :bd<cr>

" Fast copy&paste with clipboard
vmap <c-F7> "+y<cr>
nmap <c-F8> 0i<F3><c-r>+<esc><F3>

" Fast remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

" FIXME  work around the conflicts under tmux
map <c-u>  :BufExplorer<CR>
map <<    :bp<cr>
map >>    :bn<cr>

vmap <F7> "+y<cr>
nmap <F8> 0i<F3><c-r>+<esc><F3>


" Fast input
"iab _date <c-r>=strftime("%yyyy-%mm-%d")
"iab _time <c-r>=strftime("%H:%M:%S")
"iab _now  <c-r>=strftime("%H:%M:%S %d/%m/%y")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Special Settings for different file type
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python
au FileType python let python_highlight_all = 1
au FileType python let python_highlight_builtins = 1
au FileType python let python_highlight_exceptions = 1
au FileType python let python_highlight_string_formatting = 1
au FileType python let python_highlight_string_format = 1
au FileType python let python_highlight_string_templates = 1
au FileType python let python_highlight_indent_errors = 1
au FileType python let python_highlight_space_errors = 1
au FileType python let python_highlight_doctests = 1

"au FileType python so ~/.vim/syntax/python.vim

" Javascript & JQuery
au FileType javascript set shiftwidth=2
au Syntax javascript set syntax=jquery

" Configuration File
" au! BufRead,BufNewFile *.conf setfiletype cfg

" Go

" C/C++
"
" Java
"
" PHP
"
" HTML & XML
au FileType html set ft=htmldjango
au FileType html,xml set shiftwidth=2

" Perl
"
" Ruby
"
" Shell
"
" JSON
"
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Personal Bundle Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" HTML and JS
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1
let g:Tb_UseSingleClick = 1
let g:Tb_MoreThanOne = 99 
hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = 'f'

" Tagbar
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 0
let g:tagbar_sort = 0 
let g:tagbar_compact = 1
"autocmd BufReadPost *.py call tagbar#autoopen()
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree 
let NERDChristmasTree=0
let NERDTreeWinSize=25
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_lock_iminsert = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.python = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.ruby   = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php    = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c      = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp    = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" SuperTab
"let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" SnipMate
"let g:snips_trigger_key='<s-tab>'


" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.cvs$'

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive',
              \ 'active_filetypes': [],
              \ 'passive_filetypes': [] }
"ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:ultisnips_python_style = "google"
"let g:UltiSnipsJumpForwardTrigger = "<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_collect_identifiers_from_tag_files = 1  
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_key_invoke_completion = ''
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"jedi
" 光标insert状态放括号中间，有参数提示
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#completions_command = "<leader>s"
