" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
set fileencodings=utf-8,big5,gbk,latin1,euc-jp,iso-2022-jp

"plugin pathogen(put all plugin in it)
" call pathogen#infect()
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }

Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }

Plug 'Lokaltog/vim-easymotion'

Plug 'fatih/vim-go', { 'for': 'go' }

Plug 'tpope/vim-surround'

Plug 'bling/vim-airline'

Plug 'carlcarl/vim-airline-themes'

Plug 'vim-scripts/TaskList.vim', { 'on': 'TaskList' }

Plug 'vim-scripts/tComment'

Plug 'vim-scripts/matchit.zip'

Plug 'w0rp/ale'

if has('nvim')
	Plug 'roxma/nvim-completion-manager'
endif

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'kien/ctrlp.vim'

" Plug 'Shougo/neosnippet'

" Plug 'SirVer/ultisnips'

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

Plug 'othree/html5.vim'

Plug 'klen/python-mode', { 'for': 'python' }

" Add check
Plug 'davidhalter/jedi-vim'

Plug 'vim-scripts/DirDiff.vim', { 'on': 'DirDiff' }

Plug 'plasticboy/vim-markdown', { 'for': 'mkd' }

Plug 'digitaltoad/vim-jade', { 'for': 'jade' }

Plug 'gkz/vim-ls', { 'for': 'ls' }

Plug 'honza/vim-snippets', { 'for': 'vim' }

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

call plug#end()


filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

au BufNewFile,BufRead *.html set filetype=htmldjango
au BufNewFile,BufRead *.asp set filetype=html

"===============================================================================================
"Color Setting
"===============================================================================================

if has("syntax")
  syntax on
endif

set t_Co=256
" colorscheme darkburn
colorscheme molokai2
let g:molokai_original=1

set cursorline
    
let python_highlight_all = 1

"let hostname = substitute(system('hostname'), '\n', '', '')
"if hostname == xxx
"	do something
"endif

"===============================================================================================
"Feature
"===============================================================================================


" Uncomment the following to have Vim jump to the last position when
" reopening a file 
" Remember to chown .viminfo to the user by carlcarl

" Comment it for neovim compatibility
" set viminfo='10,\"100,:20,%,n~/.viminfo

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set clipboard=unnamed
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set showmode
set wildmenu            " wild char completion menu
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set nu
set tabstop=4
set shiftwidth=4
set ai
""set copyindent
set hlsearch
""set smarttab
set noexpandtab
autocmd FileType python setlocal expandtab
set iskeyword+=-
autocmd FileType javascript setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType ls setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType css setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType html setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType htmldjango setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType aspvbs setlocal expandtab tabstop=2 shiftwidth=2

" Auto close Scratch window(auto complete doc) when leave insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" AUto close {}
" inoremap {      {}<Left>
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
" inoremap {}     {}

"===============================================================================================
"Shortcut
"===============================================================================================

" F1 toggles show line number
nnoremap <F1> :set nu!<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" move around tabs. conflict with the original screen top/bottom
" comment them out if you want the original H/L
" go to prev tab 
map <S-H> gT
" go to next tab
map <S-L> gt
"}

inoremap <C-J> <C-X><C-I>
inoremap <C-F> <C-X><C-F>
inoremap <C-N> <C-X><C-N>

" Use register 0 to store clipboard buffers
noremap p "0p
noremap P "0P
noremap y "0y
noremap x "0x
"noremap d "0d

map <F5> :sign unplace *<CR>

let mapleader = ","

"===============================================================================================
"Plugin
"===============================================================================================
"
" python-mode
let pymode_folding = 1
if has('python3')
	let g:pymode_python = 'python3'
endif

let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_lint_signs_always_visible = 1
let g:pymode_indent = 1
let g:pymode_lint_ignore = "E501"
let g:pymode_rope_completion = 0
let g:pymode_lint_checkers = []
let g:pymode_rope_autoimport = 0
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0


"Add omni auto complete
autocmd FileType c set ofu=ccomplete#Complete
autocmd FileType php set ofu=phpcomplete#CompletePHP
" autocmd FileType python set ofu=pythoncomplete#Complete
autocmd FileType javascript set ofu=javascriptcomplete#CompleteJS
autocmd FileType html,markdown set ofu=htmlcomplete#CompleteTags
autocmd FileType css set ofu=csscomplete#CompleteCSS
autocmd FileType xml set ofu=xmlcomplete#CompleteTags


" make CSS omnicompletion work for SASS and SCSS
autocmd BufNewFile,BufRead *.scss             set ft=scss.css
autocmd BufNewFile,BufRead *.sass             set ft=sass.css

"plugin ctags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <F3> :TlistToggle<CR>

"plugin vim-airline show
set ls=2
let g:airline_powerline_fonts = 1
" let g:airline_left_sep = '⮀'
" let g:airline_right_sep = '⮂'
" let g:airline_branch_prefix = '⭠'
" let g:airline_readonly_symbol = '⭤'
" let g:airline_linecolumn_prefix = '⭡'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_theme = 'powerlineish'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "mycoolsnippets"]

" surround
let g:surround_45 = "{{ \r }}"
let g:surround_61 = "{% \r %}"


"plygin nerdtree
nnoremap <silent> <F4> :NERDTreeTabsToggle<CR>

" Disable because not need
" au VimEnter * NERDTree
" autocmd VimEnter * wincmd p

"plugin nerdtreetab
map <leader>n <plug>NERDTreeTabsToggle<CR>

"plugin tasklist
map T :TaskList<CR>

"plugin ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$|\.jpg$|\.jpeg$|\.ico$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" syntastic
if has('python')
	let g:syntastic_python_python_exec = 'python2'
elseif has('python3')
	let g:syntastic_python_python_exec = 'python3'
endif
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'

" Vim-jedi settings
"let g:jedi#popup_on_dot = 0
"let g:jedi#autocompletion_command = "<tab>"
if has('python')
	let g:jedi#force_py_version = 2
elseif has('python3')
	let g:jedi#force_py_version = 3
endif

" Youcompleteme
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
" Completion for programming language's keyword
let g:ycm_seed_identifiers_with_syntax = 1
" Completion in comments
" let g:ycm_complete_in_comments = 1
" Completion in string
" let g:ycm_complete_in_strings = 1

" vim-gitgutter
nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk
map <F6> :GitGutterToggle<CR>

" tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>

" golang
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>s <Plug>(go-implements)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>e <Plug>(go-rename)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" Specific settings with each host
silent! source ~/.myvimrc
