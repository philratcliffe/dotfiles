" Based on sample .vimrc file by Martin Brochhaus


" Setup Vundle to manage your plugins
"  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nocompatible              " don't need to be compatible with vi
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'Command-T'
Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'kevinw/pyflakes-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'wombat256.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed
" hit v then copy selected text to system clipboard using Ctrl-C
vnoremap <C-c> "*y


" Mouse and backspace
"" set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" let mapleader = ","
let mapleader = "\<Space>"

noremap <Leader>\ :NERDTree .<CR>

" edit vimrc and load vimrc bindings
nnoremap <leader>v :vsp $MYVIMRC<CR>

" Make Ack easier
nnoremap <leader>a :Ack

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
"" noremap <Leader>E :qa!<CR>   " Quit all windows


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
"" noremap <C-n> :nohl<CR>
"" vnoremap <C-n> :nohl<CR>
"" inoremap <C-n> :nohl<CR>


" Quicksave command
"" noremap <C-Z> :update<CR>
"" vnoremap <C-Z> <C-C>:update<CR>
"" inoremap <C-Z> <C-O>:update<CR>




" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
"
" Easy window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" easier moving between tabs
"" map <Leader>n <esc>:tabprevious<CR>
"" map <Leader>m <esc>:tabnext<CR>


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


" Color scheme
colorscheme wombat256 
" set background=dark


" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype plugin indent on
syntax on


" Showing line numbers and length
" set number  " show line numbers
set tw=79   " width of document (used by gd)
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


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


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


map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

set foldmethod=indent


set ttimeoutlen=50

if &term =~ "xterm" || &term =~ "screen"
  " as of March 2013, with current iTerm (1.0.0.20130319), tmux (1.8)
  " and Vim (7.3, with patches 1-843), this is all I need:
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']

  " when I originally started using Command-T inside a terminal,
  " I used to need these as well:
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

" Don't display pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" Close NERDTree when open a file
let NERDTreeQuitOnOpen = 1

" View current buffer in NERDTree
noremap <Leader>x :NERDTreeFind<cr>

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

" syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"Map : to ; (then remap ;) -- massive pinky-saver
"noremap ; :
"noremap <M-;> ;
"
""Map escape key to jj -- much faster
inoremap jj <esc>

" save time writing a file
nnoremap <Leader>w :w<CR>
set iskeyword-=_
set nrformats=
