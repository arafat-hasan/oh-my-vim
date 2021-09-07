




"//////////////////////////////// VUNDLE START /////////////////////////////////

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"=================== MY BUNDLES START ===============
" original repos on GitHub:

Plugin 'ycm-core/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
Plugin 'gmarik/vundle'
"Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'gabrielsimoes/cfparser.vim'
"Plugin 'Igorjan94/codeforces.vim'
"Plugin 'junegunn/vim-easy-align'    "Dependency for Igorjan94/codeforces.vim
Plugin 'christoomey/vim-run-interactive'
"Plugin 'Raimondi/delimitMate'
Plugin 'ex-surreal/vim-std-io'
Plugin 'lervag/vimtex'
Plugin 'junegunn/goyo.vim'
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plugin 'wakatime/vim-wakatime'
Plugin 'tpope/vim-fugitive'



" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




"
Plugin 'vim-syntastic/syntastic'
"Plugin 'milkypostman/vim-togglelist'
"Plugin 'tpope/vim-dispatch'
Plugin 'mg979/vim-visual-multi'
Plugin 'tpope/vim-surround'

Plugin 'morhetz/gruvbox'

" Go language support
Plugin 'fatih/vim-go'

" Adds file type icons to Vim plugins
"Plugin 'ryanoasis/vim-devicons'


Plugin 'arafat-hasan/vim_cp'

" non-GitHub repos
"Plugin 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///Users/gmarik/path/to/plugin'

" All of your Plugins must be added before the following line

"=================== MY BUNDLES END ===============

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

"====================== PLUGIN CONFIG AND VAR START ======================


filetype plugin indent on

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'



"vim-std-io
let g:std_io_window_height = 15


"Using a mouse, NERDTree
let g:NERDTreeMouseMode=3
let g:NERDDefaultAlign = 'left'



"
" YouCompleteMe options
"

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"

let g:ycm_key_list_select_completion = ['<C-N>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-P>', '<Up>']


set completeopt-=preview

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

let g:ycm_complete_in_comments = 1 
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 1 


" YouCompleteMe options end


let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1

" vim_cp configs start
let g:developer="Arafat Hasan Jenin"
let g:mail="opendoor.arafat[at]gmail[dot]com"
let g:version="1.0"
let g:description="Deleted code is debugged code."
let g:verdict="Undefined"
let g:verdict_row=11    "Row and col number to write verdict
let g:verdict_col=12    "Row and col number to write verdict



"https://github.com/Chiel92/vim-autoformat
let g:formatter_yapf_style = 'google'


let &rtp  = '~/.vim/bundle/vimtex,' . &rtp
let &rtp .= ',~/.vim/bundle/vimtex/after'

let g:vimtex_latexmk_options='-pdf -pdflatex="xelatex -synctex=1 \%S \%O" -verbose -file-line-error -interaction=nonstopmode'


" gruvbox
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_bold='1'
let g:gruvbox_italic='1'
let g:gruvbox_underline='1'
"let g:gruvbox_invert_indent_guides=1
set background=dark    " Setting dark mode

autocmd vimenter * ++nested colorscheme gruvbox


" vim-go
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'
"au filetype go inoremap <buffer> . .<C-x><C-o>



" vim-surround

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
