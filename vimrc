let mapleader = ","

" Setup Vundle to manage your plugins
"  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nocompatible              " don't need to be compatible with vi
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
"Plugin 'gmarik/vundle'
"Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }
Plugin 'ajh17/vimcompletesme'

" Theme
Plugin 'morhetz/gruvbox'
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard^=unnamedplus,unnamed
" hit v then copy selected text to system clipboard using Ctrl-C
vnoremap <C-c> "*y


" Mouse and backspace
"" set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again


" edit vimrc and load vimrc bindings
nnoremap <leader>v :vsp $MYVIMRC<CR>

" Make Ack easier
nnoremap <leader>a :Ack

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window


" map sort function to a key
vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/



" Use 'set termguicolors' below instead of t_Co=256 if using terminal with true color
" support like gnome-terminal. Otherwise source the 256 color in link above to make the
" colors right.
set t_Co=256           "use 256 color
"set termguicolors
"let base16colorspace=256  " Access colors present in 256 colorspace

let g:gruvbox_italic=1 "allow italics
colorscheme dracula    "set vim colorscheme
set background=dark "use dark variant

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype plugin indent on
syntax on


set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Useful settings
set history=10000
set undolevels=700


" Preferred formating
set textwidth=80
set tabstop=4           " A tab is 4 spaces
set softtabstop=4       " Insert spaces when tab is pressed
set shiftwidth=4        " An indent is 4 spaces
set shiftround          " Round indent to nearest shiftwidth multiple
set expandtab           " Always use spaces


" Appearance
set cursorline                 "highlight current line
set number                     "show line numbers (set number! toggles - eg. for pasting out...)
set foldcolumn=3               "extra margin on left



" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Add a Python breakpoint
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

set foldmethod=indent

set ttimeoutlen=50

if &term =~ "xterm" || &term =~ "screen"
  " as of March 2013, with current iTerm (1.0.0.20130319), tmux (1.8)
  " and Vim (7.3, with patches 1-843), this is all I need:
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']

  " when I started using Command-T inside a terminal,
  " I needed these also:
  let g:CommandTSelectNextMap = ['<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-k>', '<ESC>OA']
endif

" Disable the arrow keys while you’re in normal mode; you should use 
" use hjkl.  
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

" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

" Make zO recursively open whatever top level fold we're in: 
nnoremap zO zCzO

" Command-T should ignore these
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg

" Delete traling whitespace
autocmd BufWritePre *.py :%s/\s\+$//e


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking

" Set spelling region
set spelllang=en_gb
syntax spell toplevel

map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


" Change default format options:
set formatoptions-=t " turn off auto-wrapping type
set formatoptions-=c " turn off auto-wrapping comments
set formatoptions+=q " format comments manually with gq
set formatoptions+=n " gq recognizes numbered lists
set formatoptions+=1 " prefer breaking before, not after, a one-letter w

" Set text width to 79 characters
set textwidth=79

" Show column in status bar
:set ruler
set statusline=%F%m%r%h%w\ "fullpath and status modified sign
set statusline+=\ %y "filetype

:set omnifunc=jedi

inoremap jj <esc>

" save time writing a file
nnoremap <Leader>w :w<CR>
set iskeyword-=_
set nrformats=
"Mode Settings

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set path+=**
