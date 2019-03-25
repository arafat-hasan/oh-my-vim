"
" FILE: vimrc
"
" @author: Md. Arafat Hasan Jenin <arafathasanjenin[at]gmail[dot]com>
"
" LINK:
"
" DATE CREATED: 09-02-17 20:00:11 (+06)
" LAST MODIFIED: 09-12-17 15:35:43 (+06)
"
" VIM Configuration File. Optimized for C/C++ development
" also useful for other languages.
"
" DEVELOPMENT HISTORY:
" Date         Version     Description
" --------------------------------------------------------------
" 09-02-17     1.0         File Created
" 09-12-17     1.4         Cleanize, added many things
"
"     ___          ___           ___                       ___
"    /  /\        /  /\         /__/\        ___          /__/\
"   /  /:/       /  /:/_        \  \:\      /  /\         \  \:\
"  /__/::\      /  /:/ /\        \  \:\    /  /:/          \  \:\
"  \__\/\:\    /  /:/ /:/_   _____\__\:\  /__/::\      _____\__\:\
"     \  \:\  /__/:/ /:/ /\ /__/::::::::\ \__\/\:\__  /__/::::::::\
"      \__\:\ \  \:\/:/ /:/ \  \:\~~\~~\/    \  \:\/\ \  \:\~~\~~\/
"      /  /:/  \  \::/ /:/   \  \:\  ~~~      \__\::/  \  \:\  ~~~
"     /__/:/    \  \:\/:/     \  \:\          /__/:/    \  \:\
"     \__\/      \  \::/       \  \:\         \__\/      \  \:\
"                 \__\/         \__\/                     \__\/
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on
" required
filetype off

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","


" Disable vi compatibility (emulation of old bugs), be iMproved, required
set nocompatible


set mouse=a


" Default directory
cd /media/jenin/Softwares/Programming


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu
" <Tab> cycles between all matching choices.
set wildmode=full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Add a bit extra margin to the left
set foldcolumn=1


"highlight ColorColumn ctermbg=234
set colorcolumn=80



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable


set guifont=Ubuntu\ Mono\ 13

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    "colorscheme desert
    colorscheme solarized
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
" output encoding that is shown in the terminal
set encoding=utf8

"output encoding of the file that is written
set fileencoding=utf-8

" defines how your keyboard encodes what you type. Here we save the value
" corresponding to your locale before changing 'encoding'
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac


set cursorline
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" show title in console title bar
set title


" Y-N-C prompt if closing with unsaved changes.
set confirm
" show the cursor position all the time
set ruler






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" don't wrap textin the middle of a word
set linebreak
" Linebreak on 80 characters
" wrap lines at 110 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=80

"Wrap lines
set wrap
" Use indentation of previous line
set autoindent
" Use intelligent indentation for C
set smartindent


" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/mappings.vim


