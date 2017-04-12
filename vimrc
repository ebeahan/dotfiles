set nocompatible              " be iMproved, required
filetype off                  " required
" customize <leader>
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" vim-go
Plugin 'fatih/vim-go'
" splitjoin
Plugin 'AndrewRadev/splitjoin.vim'
" ultisnips
Plugin 'SirVer/ultisnips'
" custom molokai colorscheme
Plugin 'fatih/molokai'
" Ansible plugin
Plugin 'pearofducks/ansible-vim'
" NodeJS plugin
Plugin 'moll/vim-node'
" Super searching with ctrlP
Plugin 'kien/ctrlp.vim'
" Vim Ruby
Plugin 'vim-ruby/vim-ruby'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" Vim Markdown
Plugin 'plasticboy/vim-markdown'
" Python-mode
Plugin 'klen/python-mode'
" fugitive.vim plugin
Plugin 'tpope/vim-fugitive'
" jedi-vim plugin
Plugin 'davidhalter/jedi-vim'
" indentline plugin
Plugin 'yggdroot/indentline'
" vim-airline plugin
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Vim better whitespace plugin
Plugin 'ntpeters/vim-better-whitespace'
" Vim-colors-solarized
Plugin 'altercation/vim-colors-solarized'
" endwise.vim
Plugin 'tpope/vim-endwise'
" vim-gitgutter
Plugin 'airblade/vim-gitgutter'
" vim-json
Plugin 'elzr/vim-json'
" vim-markdownfmt
Plugin 'moorereason/vim-markdownfmt'
" vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'
" vim-python-pep8-indent
Plugin 'Vimjas/vim-python-pep8-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable               " syntax highlighting
set background=dark
colorscheme solarized
let g:rehash256 = 1
let g:molokai_original = 1
" colorscheme slate       " custom colorscheme
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
set tabstop=2           " <tab> inserts 2 spaces
set shiftwidth=2        " And an indent level is 2 spaces wide.
set softtabstop=2       " <BS> over an autoident deletes all spaces.
set expandtab           " Use spaces, not tabs, for autoindents/tab key.
set shiftround          " rounds indent to a multiple shiftwidth
"set formatoptions=tcroql " Setting text and comment formatting to auto
set textwidth=120       " lines are autotically wrapped after 80 columns
set nofoldenable        " turn off folding
set colorcolumn=120     " highlight column 80 (where words will wrap)

"""" Reading/Writng
set autowrite
"set autowriteall    " Don't bother me about changed buffers
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

"""" Identation Stuff
set cindent

"""" Go-VIM Additions
"map <C-n> :cnext<CR>
"map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test|.go$'
        call go#cmd#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
let g:go_fmt_command = "goimports"

" NERDtree keyboard shortcut
map <C-n> :NERDTreeToggle<CR>

" Disalbe Pymode Rope Cache regeneration
let g:pymode_rope = 0

" Set custom pylint.rc file
let g:pymode_lint_config = '$HOME/pylint.rc'

" ================ vim-airline ==================
let g:airline_theme='solarized'

" ================ fugitive =====================
 nnoremap <leader>ga :Git add %:p<CR><CR>
 nnoremap <leader>gs :Gstatus<CR>
 nnoremap <leader>gp :Gpush<CR>
 vnoremap <leader>gp :GBlame<CR>
