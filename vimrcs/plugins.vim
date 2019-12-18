

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_global_ycm_extra_conf = "‍‍‍‍‌‌‌‌~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
"imap <Tab> <C-P>
set completeopt-=preview


"*******vim plugin manager*****
"execute pathogen#infect()


"//////////////////////////////// VUNDLE START /////////////////////////////////


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
Plugin 'lervag/vimtex'

"----Following used by snipmate----
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' "This repository contains snippets files for various programming languages.
"
"Plugin 'vim-syntastic/syntastic'
Plugin 'milkypostman/vim-togglelist'
"Plugin 'tpope/vim-dispatch'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'arafat-hasan/vim_cp'

" non-GitHub repos
"Plugin 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///Users/gmarik/path/to/plugin'

" All of your Plugins must be added before the following line

"=================== MY BUNDLES END ===============


call vundle#end()            " required


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



"https://github.com/Chiel92/vim-autoformat
let g:formatter_yapf_style = 'google'

" vim_cp configs end





