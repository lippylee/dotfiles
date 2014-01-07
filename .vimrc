if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set nobackup                    " do not keep a backup file, use versions instead
set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set incsearch                   " do incremental searching
set nowrap                      " don't word wrap lines
set hidden			" don't fucking whine about unsaved buffers
set list lcs=trail:·,tab:»·	" show whitespace

" Don't use Ex mode, use Q for formatting
map Q gq 

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" load the man plugin
source $VIMRUNTIME/ftplugin/man.vim
map <silent> <F3> :Man <cword><CR>

set softtabstop=8
set shiftwidth=8
set tabstop=8
set ignorecase
set nu " show line numbers
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set laststatus=2 " always show status line
set mouse=a " enable mouse for all modes
set updatetime=1000 " write swap file after a second spent idling
set omnifunc=ccomplete#Complete
map <silent> <F2> <C-]>

" let pathogen do its stuff
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set background=dark
let g:molokai_original = 1
colorscheme molokai

let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = ''
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_height = 30
let g:ctrlp_max_files = 0

let g:airline_powerline_fonts = 1
