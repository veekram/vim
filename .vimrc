set encoding=utf-8              " Set default encoding
set nocompatible                " be iMproved, required
set number                      " display line numbers
set relativenumber              " Show relative line numbers
syntax enable                   " enable syntax highlighting
filetype on		        " required
set hlsearch		        " enable high light search
set showcmd		        " show command in bottom bar
set autoread 		        " make changes when files are changed from outside
set cursorline 		        " highlight current line
filetype indent on 	        " load file-type specific indent files
set wildmenu		        " visual autocomplete for command menu
set lazyredraw		        " redraw only when we need to
set showmatch		        " highlight match [{()}]
set incsearch		        " search as characters are entered
set foldenable 		        " enable folding
set foldlevelstart=10 	        " open most folds by default
set foldnestmax=10              " 10 nested fold max
set foldmethod=indent 	        " fold based on indent level
set pastetoggle=<F10>	        " set paste toggle
set ignorecase		        " set ignore case
set expandtab		        " convert tabs to spaces
set clipboard=unnamed           " Enable copying from vim to other applications as well
set noerrorbells
set novisualbell
set wrap                        " turn on line wrapping
set linebreak                   " set soft wraping
set autoindent                  " automatically set indent of new line
set smartindent
set virtualedit=onemore         " Sets the cursor to the end of the text
set fillchars=""
set laststatus=2                " Set stautus line to 2
"set fillchars+=vert:\           " Change the vertical bar styling in split
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Provides insert mode autocompletion for quotes, parens, brackets, etc
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/youcompleteme'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ryanoasis/vim-devicons'
" Seamless navigation between tmux pane and vim splits
Plugin 'christoomey/vim-tmux-navigator'
" Lean and mean status/tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Taglist
Plugin 'taglist.vim'
" Preview colors in source code
Plugin 'ap/vim-css-color'
Plugin 'luochen1990/rainbow'
" Ruby and Ruby on Rails dev. plugins
Plugin 'tpope/vim-rails'
" Tagbar
Plugin 'tagbar'
" Vim plugin for visually displaying indent levels in code
Plugin 'nathanaelkane/vim-indent-guides'
" Matching syntax highlighting
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Dependency for color-switcher
Plugin 'xolox/vim-misc'
Plugin 'junegunn/goyo.vim'
" Calendar for vim
Plugin 'itchyny/calendar.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'vimwiki/vimwiki'
" Plugin for searching files 
Plugin 'mileszs/ack.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'mhinz/vim-startify'
Plugin 'beloglazov/vim-online-thesaurus'
call vundle#end()            " required

filetype plugin indent on    " required
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
" Insert default color scheme
colorscheme CandyPaper
execute pathogen#infect()
" Enable powerline fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Default airline theme
let g:airline_theme = 'cool'
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Rainbow parenthesis conf
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}
" Custom key bindings
nnoremap <leader>nt :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
" Tagbar
nmap <F10> :TagbarToggle<CR>
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <space> za " space open/close folds

" Useful mappings for managing tabs
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove<CR>

" Key mappings for split ands split navigation
map <leader>vs :vsp <CR>
map <leader>hs :sp <CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-W>
nnoremap <C-L> <C-W><C-L>

map <leader>x :q! <CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" Remap VIM 0 to first non-blank character
map 0 ^

" Set <C-w> to <Leader>w
nnoremap <leader>w <C-w>

" Close current buffer
map <leader>bd :bd <CR>

" Standard shortcut keys
map <C-a> GVgg
map <C-n> :enew
map <C-o> :e . <Enter>
map <C-s> :w <Enter>
map <C-c> y
map <C-v> p
map <C-x> d
map <C-z> u
map <C-t> :tabnew <Enter>
map <C-i> >>
"map <C-w> :close <Enter>
"map <C-W> :q! <Enter>
map <C-f> /
map <F3> n
map <C-h> :%s/
map <S-t> vat
map <S-T> vit
map <S-{> vi{
map <S-(> vi(
map <S-[> vi[

" Move lines/block up or down in Insert, Normal and Visual mode
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" Highlight full name with nerdtree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeShowHidden = 1 

" Set it has mouse
if has('mouse')
	set mouse=a
endif
