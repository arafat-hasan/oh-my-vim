 "
 " FILE: .vimrc
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


" Default directory
cd /media/Softwares/Programming

set guifont=Ubuntu\ Mono\ 13

" Disable vi compatibility (emulation of old bugs), be iMproved, required
set nocompatible

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
"imap <Tab> <C-P>
set completeopt-=preview


"*******vim plugin manager*****
"execute pathogen#infect()


"//////////////////////////////// VUNDLE START /////////////////////////////////

filetype off    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Keep Plugin commands between vundle#begin/end.
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"=================== MY BUNDLES START ===============
" original repos on GitHub:
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/vundle'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'gabrielsimoes/cfparser.vim'
"Plugin 'Igorjan94/codeforces.vim'
"Plugin 'junegunn/vim-easy-align'    "Dependency for Igorjan94/codeforces.vim
Plugin 'christoomey/vim-run-interactive'
Plugin 'Raimondi/delimitMate'
Plugin 'ex-surreal/vim-std-io'
"----Following used by snipmate----
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'AHJenin/vim_cp'

" non-GitHub repos
"Plugin 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///Users/gmarik/path/to/plugin'

" All of your Plugins must be added before the following line

"=================== MY BUNDLES END ===============


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"====================== PLUGIN CONFIG AND VAR START ======================

" variables
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
"let g:airline_theme='dark'
let g:airline_solarized_normal_green = 1
"let g:airline_solarized_dark_inactive_border = 1
"let g:airline_base16_improved_contrast = 1
let g:airline_base16_solarized = 1
let g:NERDDefaultAlign = 'left'

"*****Yggdroot/indentLine*****
let g:indentLine_char = '┆'
"let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
"let g:indentLine_color_gui = '#FFFFFF'

"vim-std-io
let g:std_io_window_height = 15

"Using a mouse, NERDTree
set mouse=a
let g:NERDTreeMouseMode=3

" mappings
map :N :NERDTree<CR>

" ================= PLUGIN CONFIG AND VAR END ==================


"//////////////////////////////// VUNDLE END ///////////////////////////////////


"////////////////////////// FORMATTING START ///////////////////////////////////

"aristic style must be installed for this
nnoremap  <silent> ,f :execute "normal ma" <bar> %!astyle <CR> :execute "normal `a" <CR> zz
inoremap  <silent> ,f <ESC>:execute "normal ma" <bar> %!astyle <CR> :execute "normal `a" <CR> zz

" Colorscheme
map :cl1 :colorscheme morning<CR>
map :cl2 :colorscheme pablo<CR>
map :cl3 :colorscheme desert<CR>
map :drk :set background=dark<CR>
map :lht :set background=light<CR>

" Paranthesis Close
inoremap {<CR>  {<CR>}<Esc>O



"////////////////////////// FORMATTING END ///////////////////////////////////


" ================== Window Slpiting, Status Bar ==================
map :sp :wincmd v<CR>
nnoremap <C-B> :wincmd w<CR>
inoremap <C-B> <ESC>:wincmd w<CR>
"Show statusbar
map <silent> <S-F12> :set laststatus=0<CR>
map <silent> <F12> :set laststatus=2<CR>

" ================== Mappings to move lines ====================
"In normal mode or in insert mode, press clt-j to move the current line down, or press clt-k to move the current line up.
"After visually selecting a block of lines (for example, by pressing V then moving the cursor down),
"press clt-j to move the whole block down, or press clt-k to move the block up
nnoremap  <silent> <C-j> :m .+1<CR>==
nnoremap  <silent> <C-k> :m .-2<CR>==
inoremap  <silent> <C-j> <Esc>:m .+1<CR>==gi
inoremap  <silent> <C-k> <Esc>:m .-2<CR>==gi
vnoremap  <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap  <silent> <C-k> :m '<-2<CR>gv=gv
map <S-j> 10j
map <S-k> 10k

" ============= Un/Comment debug =======================
map <leader>dbc :97,$s/debug/\/\/debug/gi<CR> :97,$s/nl;/\/\/nl;/gi<CR> :97,$s/ckk;/\/\/ckk;/gi <CR>
map <leader>dbu :97,$s/\/\/debug/debug/gi<CR> :97,$s/\/\/nl;/nl;/gi<CR> :97,$s/\/\/ckk;/ckk;/gi <CR>


" ===================== uva-tool =====================
map <leader>uvw :!clear && uva-tool -hunt -u arafat_hasan -r 10
map <leader>uvs :!clear && ~/.vim/vim_uva-tool_run_script.sh '%:p'<CR>
map <leader>uvi :!uva-tool -login
map <leader>uvo :!uva-tool -logout



" Show/Hide GUI Menus
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <S-F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i




"To turn off error beeping and flashing
set visualbell 
"set t_vb=




" ========= Commenting blocks of code =======================
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"================Commenting blocks of code End================





set enc=utf-8   " set UTF-8 encoding
set fenc=utf-8
set termencoding=utf-8
set autoindent  " Use indentation of previous line
set smartindent " Use intelligent indentation for C


" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces


set t_Co=256    " turn syntax highlighting on
" have a line indicate the cursor location
" this is already set in /etc/vimrc
set cursorline

syntax enable
set background=dark
colorscheme solarized


set number                          " turn line numbers on
set showmatch                       " highlight matching braces
set comments=sl:/*,mb:\ *,elx:\ */  " intelligent comments
set title                           " show title in console title bar
set wildmenu                        " Menu completion in command mode on <Tab>
set wildmode=full                   " <Tab> cycles between all matching choices.

"set nowrap                         " don't wrap text
" wrap lines at 110 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=80
set linebreak                       " don't wrap textin the middle of a word
set confirm                         " Y-N-C prompt if closing with unsaved changes.
set ruler                           " show the cursor position all the time
"Show statusbar
set laststatus=2
set colorcolumn=80
"highlight ColorColumn ctermbg=234


