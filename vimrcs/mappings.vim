

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" mappings
map <F2> :NERDTreeToggle<CR>

nnoremap <leader>yr :YcmForceCompileAndDiagnostics <CR>
nnoremap <leader>yR :YcmShowDetailedDiagnostic <CR>
nnoremap <leader>yl :YcmDiags <CR>
nnoremap <leader>yf :YcmCompleter FixIt <CR>
nnoremap <leader>yg :YcmCompleter GoTo <CR>
nnoremap ,f :YcmShowDetailedDiagnostic <CR>

" ================= PLUGIN CONFIG AND VAR END ==================



"//////////////////////////////// VUNDLE END ///////////////////////////////////

"nnoremap  <silent> ,a :execute "normal ma" <bar> %!astyle <CR> :execute "normal `a" <CR> zz
"inoremap  <silent> ,a <ESC>:execute "normal ma" <bar> %!astyle <CR> :execute "normal `a" <CR> zz

" Colorscheme
map :cl1 :colorscheme morning<CR>
map :cl2 :colorscheme pablo<CR>
map :cl3 :colorscheme desert<CR>
map :drk :set background=dark<CR>
map :lht :set background=light<CR>

" Paranthesis Close
"inoremap {<CR>  {<CR>}<Esc>O


nnoremap  <silent> ,z :!clear<CR>


noremap <F3> :Autoformat<CR>
inoremap  <F3> <ESC>:Autoformat<CR>



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

nnoremap  <silent> <A-j> :m .+1<CR>==
inoremap  <silent> <A-j> <Esc>:m .+1<CR>==gi
vnoremap  <silent> <A-j> :m '>+1<CR>gv=gv
nnoremap  <silent> <A-k> :m .-2<CR>==
inoremap  <silent> <A-k> <Esc>:m .-2<CR>==gi
vnoremap  <silent> <A-k> :m '<-2<CR>gv=gv


" ============= Un/Comment debug =======================
map <leader>dbc :97,$s/debug/\/\/debug/gi<CR> :97,$s/nl;/\/\/nl;/gi<CR> :97,$s/ckk;/\/\/ckk;/gi <CR>
map <leader>dbu :97,$s/\/\/debug/debug/gi<CR> :97,$s/\/\/nl;/nl;/gi<CR> :97,$s/\/\/ckk;/ckk;/gi <CR>


" ===================== uva-tool =====================
map <leader>uvw :!clear && uva-tool -hunt -u arafat_hasan -r 10
map <leader>uvs :!clear && ~/.vim/vim_uva-tool_run_script.sh '%:p'<CR>
map <leader>uvi :!uva-tool -login
map <leader>uvo :!uva-tool -logout

" leetcode.vim doesn't bind any key mappings by default. Put the following lines to your .vimrc to set up the key mappings.
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>


" Show/Hide GUI Menus
function! ToggleGUICruft()
    if &guioptions=='i'
        exec('set guioptions=imTrL')
    else
        exec('set guioptions=i')
    endif
endfunction

map <S-F11> <Esc>:call ToggleGUICruft()<CR>



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

function! Togglecolor()
    if &background=='dark'
        exec('set background=light')
    else
        exec('set background=dark')
    endif
endfunction



nnoremap  <silent> <F4> :w<CR> :PymodeRun<CR>
inoremap  <silent> <F4> <Esc>:w<CR> :PymodeRun<CR>

