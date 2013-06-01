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
call pathogen#infect()

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

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
""colors vgod
" set background=light 
    
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
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

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
autocmd FileType python setlocal foldmethod=indent

" Auto close Scratch window(auto complete doc) when leave insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" AUto close {}
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

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
" noremap d "0d

"===============================================================================================
"Plugin
"===============================================================================================
let mapleader = ","

"Add omni auto complete
autocmd FileType c set ofu=ccomplete#Complete
autocmd FileType php set ofu=phpcomplete#CompletePHP
" autocmd FileType python set ofu=pythoncomplete#Complete
" autocmd FileType python set ofu=pysmell#Complete
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

"plugin vim-powerline show
set ls=2
let g:Powerline_symbols = 'fancy'

"plygin nerdtree
nnoremap <silent> <F5> :NERDTree<CR>

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

"plugin pylint
" autocmd FileType python compiler pylint
" let g:pylint_onwrite = 0
" let g:pylint_cwindow = 0

let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_lint_signs_always_visible = 1

" Use clang library instead which perform better performance 
let g:clang_use_library = 1

let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }

" Vim-jedi settings
let g:jedi#popup_on_dot = 0

let g:ycm_confirm_extra_conf = 0

source ~/.vim/neocomplcache.vim

" Specific settings with each host
silent! source ~/.myvimrc
	

