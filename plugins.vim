" Plugin setup for neovim
" auto-install vim-plug
"
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Fugitive
    "
    Plug 'tpope/vim-fugitive'

    " Syntax checking
    Plug 'scrooloose/syntastic'


    " Colour schemes
    Plug 'dracula/vim', { 'as': 'dracula' }

    " Better Syntax Support
    "
    Plug 'vim-python/python-syntax'

    " Auto pairs for '(' '[' '{'
    "
    Plug 'jiangmiao/auto-pairs'

    " Make nvim as smart as VSCode
    "
    Plug 'neoclide/coc.nvim', {'branch': 'release'}


    " Fuzzy finder 
    "
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'


    


call plug#end()

