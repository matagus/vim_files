" disable vi compatibility
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" ----------------------------------------
" Bundles here:
"
" Themes
" Bundle 'altercation/vim-colors-solarized'
Bundle 'junegunn/seoul256.vim'

" (snipMate)
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
" (end snipMate)

" VIM enhancements
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mileszs/ack.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'szw/vim-ctrlspace'
Bundle 'xolox/vim-misc'
Bundle 'millermedeiros/vim-statline'
Bundle 'ShowTrailingWhitespace'
Bundle 'bufexplorer.zip'
" Drag visual blocks arround
Bundle 'fisadev/dragvisuals.vim'
" Window chooser
Bundle 't9md/vim-choosewin'
" Search results counter
Bundle 'IndexedSearch'
" Yank history navigation
Bundle 'YankRing.vim'
" Class/module browser
Bundle 'majutsushi/tagbar'
" Code and files fuzzy finder
Bundle 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Bundle 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Bundle 'mattn/emmet-vim'
" Tab list panel
Bundle 'kien/tabman.vim'
" Airline
Bundle 'bling/vim-airline'
" Consoles as buffers
Bundle 'rosenfeld/conque-term'
" Pending tasks list
Bundle 'fisadev/FixedTaskList.vim'
" Surround
Bundle 'tpope/vim-surround'
" Autoclose
Bundle 'Townk/vim-autoclose'
" Indent text object
Bundle 'michaeljsmith/vim-indent-object'
" Better autocompletion
Bundle 'Shougo/neocomplcache.vim'
" Git/mercurial/others diff icons on the side of the file lines
Bundle 'mhinz/vim-signify'

" Git ignore syntax HL
Bundle 'gitignore.vim'
" Git integration
Bundle 'motemen/git-vim'

" nginx
Bundle 'vim-scripts/nginx.vim'

" Javascript & HTML5
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'elzr/vim-json'

" Latex/XML/HTML tags navigation
Bundle 'vim-scripts/matchit.zip'

" CofeeScript
Bundle 'kchmck/vim-coffee-script'

" CSS
Bundle 'skammer/vim-css-color'
Bundle 'vim-scripts/Css-Pretty'
Bundle 'hail2u/vim-css3-syntax'

" css/less/sass/html color preview for vim
Bundle 'gorodinskiy/vim-coloresque'

" Python
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'jmcantrell/vim-virtualenv'
" Automatically sort python imports
Bundle 'fisadev/vim-isort'
" Python and PHP Debugger
Bundle 'fisadev/vim-debug.vim'
" Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
Bundle 'klen/python-mode'
Bundle 'scrooloose/syntastic'

" Django
Bundle 'vim-scripts/django.vim'
Bundle 'vim-scripts/Dpaste.com-Plugin'
Bundle 'cwood/vim-django'

" Node.js
Bundle 'mmalecki/vim-node.js'
Bundle 'digitaltoad/vim-jade'

" Scala
Bundle 'derekwyatt/vim-scala'

" Ruby & rails
Bundle "vim-ruby/vim-ruby"
Bundle 'vim-scripts/rails.vim'

" js beautify
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'

" Lua
Bundle 'xolox/vim-lua-ftplugin'
Bundle "xolox/vim-lua-inspect"

" Go Lang
Bundle 'fatih/vim-go'

" Haskell
Bundle 'jberryman/haskomplete.vim'

" Rust Lang
Bundle 'wting/rust.vim'

" Markdown
Bundle 'plasticboy/vim-markdown'

" Java
Bundle "vim-scripts/java.vim"

" TOML files
Bundle "cespare/vim-toml"

" Bundle 'Command-T' native extension segfaults
" ----------------------------------------

call vundle#end()            " required

filetype plugin indent on

set encoding=utf-8

" ----------------------------------------------------------------------------
"  Text Formatting
" ----------------------------------------------------------------------------

set autoindent             " automatic indent new lines
set smartindent            " be smart about it
inoremap # X<BS>#
" set nowrap                 " do not wrap lines
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=4
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
set textwidth=80           " wrap at 80 chars by default
set colorcolumn=+1         " color column 81
set virtualedit=block      " allow virtual edit in visual block ..

" ----------------------------------------------------------------------------
"  Remapping
" ----------------------------------------------------------------------------

" lead with ,
let mapleader = ","

" exit to normal mode with 'jj'
inoremap jj <ESC>

" exit to normal mode with ':w<CR>'
inoremap :w<CR> <ESC>:w<CR>i


" reflow paragraph with Q in normal and visual mode
nnoremap Q gqap
vnoremap Q gq

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------

set ruler                  " show the cursor position all the time
set noshowcmd              " don't display incomplete commands
set nolazyredraw           " turn off lazy redraw
set number                 " line numbers
set wildmenu               " turn on wild menu
" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest,full
set ch=2                   " command line height
set backspace=2            " allow backspacing over everything in insert mode
" set whichwrap+=<,>,h,l,[,] " backspace and cursor keys wrap to
set shortmess=filtIoOA     " shorten messages
set report=0               " tell us about changes
set nostartofline          " don't jump to the start of line when scrolling


" ----------------------------------------------------------------------------
" Visual Cues
" ----------------------------------------------------------------------------

set showmatch              " brackets/braces that is
set mat=5                  " duration to show matching brace (1/10 sec)
set incsearch              " do incremental searching
set laststatus=2           " always show the status line
set ignorecase             " ignore case when searching
" set smartcase              " but be case sensitive when there's uppercase chars
set hlsearch               " highlight searches
set visualbell             " shut the fuck up


" ---------------------------------------------------------------------------
"  Strip all trailing whitespace in file
" ---------------------------------------------------------------------------

function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

" ---------------------------------------------------------------------------
"  My Settings
" ---------------------------------------------------------------------------

" filetype detection
filetype plugin on
filetype on
filetype indent on

" auto-complete
set ofu=syntaxcomplete#Complete
set completeopt=menuone,longest,preview

" Auto close the preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" split and tab navigation

func! GoLeft()
  let oldw = winnr()
  silent! exe "normal! \<c-w>h"
  let neww = winnr()
  if oldw == neww
    exe "normal! \gT"
  endif
endfunction

func! GoRight()
  let oldw = winnr()
  silent! exe "normal! \<c-w>l"
  let neww = winnr()
  if oldw == neww
    exe "normal! \gt"
  endif
endfunction

" window-tab navigation
nnoremap <silent> <C-h> :call GoLeft()<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <silent> <C-l> :call GoRight()<CR>

" NERDTree
let NERDTreeQuitOnOpen = 1
let NERDTreeChDirMode=2

" (ctags) go to definition in a new tab
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :tab split<CR>:exec("tjump ".expand("<cword>"))<CR>

" use currently open buffer
:se switchbuf=usetab

" avoid hidden buffers
" :se nohidden

" command-t open in new tab by default
" let g:CommandTAcceptSelectionMap='<S-CR>'
" let g:CommandTAcceptSelectionSplitMap='<C-s>'
" let g:CommandTAcceptSelectionTabMap='<CR>'

" rainbow parenthesis
" au VimEnter * RainbowParenthesesToggle " default enabled
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons
nnoremap <Leader>r :RainbowParenthesesToggle<CR>

" js beautify
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" ack mapping
nnoremap <Leader>a :Ack

nnoremap <Leader>/ :noh<CR>

" code folding
set foldmethod=syntax
nnoremap <Space> za
set nofoldenable " folds disabled by default

" syntax highliting
syntax on

" Unified color scheme (default: dark)
color seoul256
set background=dark

" buffer-explorer settings
nmap <Tab> <Leader>be
nmap <S-Tab> <Leader>bs
let g:bufExplorerShowRelativePath=1

" highlight trailing whitespace
highlight ShowTrailingWhitespace ctermbg=DarkRed guibg=DarkRed

" Vim-CtrlSpace Config
hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"

" vim-django
let g:django_projects = '~/streema/repos/matagus' "Sets all projects under project
let g:django_activate_virtualenv = 1 "Try to activate the associated virtualenv
let g:django_activate_nerdtree = 1 "Try to open nerdtree at the project root.

" syntastic
let g:syntastic_auto_loc_list=1

" plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

set completeopt-=preview

" save as sudo
ca w!! w !sudo tee "%"

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp " directory to place swap files in
set backup " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar -----------------------------
" toggle tagbar display
map <F4> :TagbarToggle<CR>

" autofocus on tagbar open
let g:tagbar_autofocus = 1

" NERDTree -----------------------------

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>

" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>

" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" Tasklist ------------------------------

" show pending tasks list
map <F2> :TaskList<CR>

" Vim-debug ------------------------------
" disable default mappings, have a lot of conflicts with oter plugins
let g:vim_debug_disable_mappings = 1

" add some useful mappings
map <F5> :Dbg over<CR>
map <F6> :Dbg into<CR>
map <F7> :Dbg out<CR>
map <F8> :Dbg here<CR>
map <F9> :Dbg break<CR>
map <F10> :Dbg watch<CR>
map <F11> :Dbg down<CR>
map <F12> :Dbg up<CR>

" CtrlP ------------------------------

" file finder mapping
let g:ctrlp_map = ',e'

" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>

" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>

" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>

" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>

" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>

" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction

" same as previous mappings, but calling with current word as default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>

" don't change working directory
let g:ctrlp_working_path_mode = 0

" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
\ 'dir': '\v[\/](\.git|\.hg|\.svn)$',
\ 'file': '\.pyc$\|\.pyo$',
\ }

" Syntastic ------------------------------

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>

" check also when just opened the file
let g:syntastic_check_on_open = 1

" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0

" custom icons (enable them if you use a patched font, and enable the previous
" setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'

" Python-mode ------------------------------

" don't use linter, we use syntastic for that
let g:pymode_lint_on_write = 0
let g:pymode_lint_signs = 0

" don't fold python code on open
let g:pymode_folding = 0

" don't load rope by default. Change to 1 to use rope
let g:pymode_rope = 0

" open definitions on same window, and custom mappings for definitions and
" occurrences
let g:pymode_rope_goto_definition_bind = ',d'
let g:pymode_rope_goto_definition_cmd = 'e'
nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
nmap ,o :RopeFindOccurrences<CR>

" NeoComplCache ------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make
" it play nice)
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1

" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'

" TabMan ------------------------------

" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus = 'tf'

" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" DragVisuals ------------------------------

" mappings to move blocks in 4 directions
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')

" mapping to duplicate block
vmap <expr> D DVB_Duplicate()

" Signify ------------------------------
" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]

" mappings to jump to changed blocks
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)

" nicer colors
highlight DiffAdd cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete cterm=bold ctermbg=none ctermfg=167
highlight DiffChange cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd cterm=bold ctermbg=237 ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237 ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237 ctermfg=227

" Window Chooser ------------------------------
" mapping
nmap - <Plug>(choosewin)

" show big letters
let g:choosewin_overlay_enable = 1

" Airline ------------------------------
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline#extensions#whitespace#enabled = 0

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
"if !exists('g:airline_symbols')
" let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'
