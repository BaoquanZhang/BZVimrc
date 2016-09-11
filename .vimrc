"=>general setting
"set how many lines of history vim has to remember
set history=700 
"enable filetype plugins
filetype plugin on
filetype indent on
"set to auto read when a file is changed from the outside
set autoread

"user interface
"set 7 lines to the cursor - when moving vertically using j/k
set so=7
"turn on the wild menu
set wildmenu
"always show current position
set ruler
"ignoring case when searching
set ignorecase
"when searching try to be smart about case
set smartcase
"highlight search result
set hlsearch
"Make search act like searching in modern browsers
set incsearch
"don't redraw while executing macros
set lazyredraw
"for regular expressions trun magic on
set magic
"show matching brackets when text indicator is over them
set showmatch
"how many tenths of a second to blink when matching brackets
set mat=2
set nu

"=>colors and fonts
"enable syntax highlighting
syntax enable
colo desert
"set extra options when running in GUI mode
if has ("gui_runing")
     set guioptions-=T
     set guioptions+=e
     set t_Co=256
     set guitablabel=%M\ %t
endif

set encoding=utf8

"=> Text, tab and space
"use space instead of tabs
set expandtab
"be smart when using tab
set smarttab
"1 tab == 4 space
set shiftwidth=4
set tabstop=4

set ai " auto indent
set si " smart indent
set wrap "wrap lines

"status bar settings
set laststatus=2
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\  

