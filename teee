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
Plugin 'Chiel92/vim-autoformat'
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
"Plugin 'vim-syntastic/syntastic'
Plugin 'milkypostman/vim-togglelist'
"Plugin 'tpope/vim-dispatch'

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

" ==================== vim-syntastic/syntastic ===================
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_enable_signs = 1

"let g:syntastic_cpp_checkers = ['gcc']

"let g:syntastic_auto_jump = 1
"let g:syntastic_enable_balloons = 1

"let g:syntastic_cpp_compiler = 'g++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra'
" ========== vim-syntastic/syntastic ===============


"
" YouCompleteMe options
"

let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''


let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1


let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'

" YouCompleteMe options end


let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1

" vim_cp configs start


let g:developer="Arafat Hasan Jenin"
let g:mail="opendoor.arafat[at]gmail[dot]com"
let g:version="1.0"
let g:description="Deleted code is debugged code."
let g:verdict="Almost Accepted"
let g:verdict_row=11    "Row and col number to write verdict
let g:verdict_col=12    "Row and col number to write verdict

" vim_cp configs end




" mappings
map :N :NERDTree<CR>

nnoremap <leader>yr :YcmForceCompileAndDiagnostics <CR>
nnoremap <leader>yR :YcmShowDetailedDiagnostic <CR>
nnoremap <leader>yl :YcmDiags <CR>
nnoremap <leader>yf :YcmCompleter FixIt <CR>
nnoremap <leader>yg :YcmCompleter GoTo <CR>
nnoremap ,f :YcmShowDetailedDiagnostic <CR>

" ================= PLUGIN CONFIG AND VAR END ==================



"//////////////////////////////// VUNDLE END ///////////////////////////////////


"////////////////////////// FORMATTING START ///////////////////////////////////

"aristic style must be installed for this

nnoremap  <silent> ,a :Autoformat<CR>
inoremap  <silent> ,a <ESC>:Autoformat<CR>

"nnoremap  <silent> ,a :execute "normal ma" <bar> %!astyle <CR> :execute "normal `a" <CR> zz
"inoremap  <silent> ,a <ESC>:execute "normal ma" <bar> %!astyle <CR> :execute "normal `a" <CR> zz

" Colorscheme
map :cl1 :colorscheme morning<CR>
map :cl2 :colorscheme pablo<CR>
map :cl3 :colorscheme desert<CR>
map :drk :set background=dark<CR>
map :lht :set background=light<CR>

" Paranthesis Close
inoremap {<CR>  {<CR>}<Esc>O


nnoremap  <silent> ,z :!clear<CR>

"////////////////////////// FORMATTING END ///////////////////////////////////


" ================== Window Slpiting, Status Bar ==================
"map :sp :wincmd v<CR>

"Show statusbar
map <silent> <S-F12> :set laststatus=0<CR>
map <silent> <F12> :set laststatus=2<CR>

" moving around the splits
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l



" ================== Mappings to move lines ====================
"In normal mode or in insert mode, press clt-j to move the current line down, or press clt-k to move the current line up.
"After visually selecting a block of lines (for example, by pressing V then moving the cursor down),
"press clt-j to move the whole block down, or press clt-k to move the block up

nnoremap  <silent> <C-j> :m .+1<CR>==
inoremap  <silent> <C-j> <Esc>:m .+1<CR>==gi
vnoremap  <silent> <C-j> :m '>+1<CR>gv=gv
nnoremap  <silent> <C-k> :m .-2<CR>==
inoremap  <silent> <C-k> <Esc>:m .-2<CR>==gi
vnoremap  <silent> <C-k> :m '<-2<CR>gv=gv
map <S-j> 10j
map <S-k> 10k
inoremap jk <esc>


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

map <S-F11> <Esc>:call ToggleGUICruft()<CR>

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





set enc=utf-8   " set UTF-8 encoding, needed fot valloric/YouCompleteMe
set fenc=utf-8
set termencoding=utf-8
set autoindent  " Use indentation of previous line
set smartindent " Use intelligent indentation for C


" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set softtabstop=4   " number of spaces in tab when editing


set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces


set t_Co=256    " turn syntax highlighting on
" have a line indicate the cursor location
" this is already set in /etc/vimrc
set cursorline

syntax enable
set background=dark
colorscheme solarized

filetype indent on      " load filetype-specific indent files


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

" Open Quickfix window automatically after running :make
augroup OpenQuickfixWindowAfterMake
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost    l* nested lwindow
augroup END



"let g:is_IOwindow_open = 0

"function! Prepare_IO_window()
"    if g:is_IOwindow_open ==# 0
"        botright 40vsplit output_buffer
""       setlocal buftype=nofile noswapfile switchbuf=useopen
"        split /media/Softwares/Programming/input.txt
"        let g:is_IOwindow_open = 1
"    endif
"endfunction


"function! MySplit()
        
"    call Prepare_IO_window()

"endfunction


"map <leader>s :call MySplit()<CR><CR>




map <leader>w :!nasm -f elf32 '%:p' -o a.o  && ld -m elf_i386 a.o -o a.out && ./a.out<CR>
