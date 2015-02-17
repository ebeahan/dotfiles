set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Bundle 'Valloric/YouCompleteMe'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

syntax on               " syntax highlighting
colorscheme slate       " custom colorscheme
filetype on             " try to detect files
set number              " Display line numbers
set title               " show title in console title bar
set wildmenu            " set wildmenu
set wildmode=full       " <Tab> cycles between all matching choices


""" Moving around/editing
set cursorline          " have a line indicate the cursor location
set ruler               " show the cursor position all the time
set nostartofline       " Avoid moving cursor to BOL when jumping around
set wrap                " Wrap test
set linebreak           " don't wrap text in the middle of a word
set autoindent          " always set autoindenting on
set smartindent         " use smart indent if there is no ident file
set tabstop=4           " <tab> inserts 4 spaces
set shiftwidth=4        " And an indent level is 4 spaces wide.
set softtabstop=4       " <BS> over an autoident deletes all spaces.
set expandtab           " Use spaces, not tabs, for autoindents/tab key.
set shiftround          " rounds indent to a multiple shiftwidth
set formatoptions=tcroql " Setting text and comment formatting to auto
set textwidth=80        " lines are autotically wrapped after 80 columns
set nofoldenable        " turn off folding
set colorcolumn=80      " highlight column 80 (where words will wrap)

"""" Reading/Writng
set autowriteall    " Don't bother me about changed buffers
set noautoread      " Don't automatically re-read changed files
set modeline        " Allow vim options to be embedded in files
set modelines=5     " they must be within the first or last 5 lines.

"""" Messages, Info, Status

set ls=2            " always show status line
set vb t_vb=        " Disable all bells. I hate ringing/flashing.
set showcmd         " Show incomplete normal mode commands as I type.

"""" Searching and Patterns

set ignorecase      " Default to using case insensitive searches
set smartcase       " unless uppercase letters are used in the regex
set hlsearch        " Highlight searches by default.
set incsearch       " Incrementally search while type a /regex
