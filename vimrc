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
set wrap                " Wrap text
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
