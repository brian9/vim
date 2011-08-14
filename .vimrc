" This must be first, because it changes other options as side effect
set nocompatible

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set modelines=0

set hidden

set nowrap        " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set tabstop=8
set shiftwidth=4  " number of spaces to use for autoindenting
set softtabstop=4
set expandtab
set textwidth=79
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set foldmethod=indent
set foldlevel=99

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep"

set nobackup
set noswapfile

filetype plugin indent on

set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2

nnoremap / /\v
vnoremap / /\v
set gdefault
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set formatoptions=qrn1

set background=dark
syntax enable
set guifont=Meslo\ LG\ M\ DZ\ Bold:h12
colorscheme molokai "solarized

set nolist

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :

au FocusLost * :wa

" nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" http://blog.dispatched.ch/2009/05/24/vim-as-python-ide/"
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:pep8_map='<leader>8'

" Pablo picante
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/

nnoremap <silent> T :TaskList<CR>
nnoremap <silent> <F9> :set number!<CR>
nnoremap <silent> <F10> :TlistToggle<CR>
nnoremap <silent> <F11> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>

let NERDTreeIgnore          =   ['\.pyc$','\.swp$','\.o$']
let NERDTreeMouseMode       =   3                     "single-click to open files/nodes
let NERDTreeWinPos          = 'left'
let NERDTreeSplitVertical   =   1                     "and open as vsplit
let NERDTreeChDirMode       =   2                     "change working dir when I change root
let NERDTreeShowBookmarks   =   1
let Tlist_Inc_Winwidth = 40

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,haml,mustache set ts=2 sts=2 sw=2 et
  autocmd FileType c,cpp set ts=2 sts=2 sw=2 et
  autocmd FileType python,py set ts=4 sts=4 sw=4 et
  autocmd FileType js set ts=4 sts=4 sw=4 et
augroup END

if has("gui_running") 
    highlight SpellBad term=underline gui=undercurl guisp=Orange 
endif 
