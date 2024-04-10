"MAP SPACE
nnoremap <Space> <Nop>
vnoremap <Space> <Nop>
let mapleader = " "
let maplocalleader = "//"
"DELETE FORWARD
inoremap <C-d> <Del>

"EASIER ESC + EASIER NAVIGATION OF WINDOWS
"let g:easyescape_chars = {"j": 2}
"let g:easyescape_timeout = 30
"inoremap jj <ESC>
"inoremap jj <Esc>
imap <C-c> <Esc>

"EASIER WINDOW NAVIGATION
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"NERD TREE AND FZF
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

"CMAKE CONFIG
let g:cmake_link_compile_commands = 1
nmap <leader>cg :CMakeGenerate<cr>
nmap <leader>cb :CMakeGenerate<cr>

"CLIPBOARD
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$
"paste last thing yanked, not deleted
nmap ,p "0p
nmap ,P "0P


"TERMINAL
nnoremap <leader>t :CocCommand terminal.Toggle<CR>
tnoremap <Esc> tnoremap <Esc> <C-\><C-n>:q!<CR>

"TAB
nnoremap <leader><Tab> :set showtabline=2<CR> 
nnoremap <leader>r<Tab> :set showtabline=0<CR> 
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

"MOVE LINES ON HIGHLIGHT
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"SML 
augroup vimbettersml
  au!

  " ----- KEYBINDINGS -----

  au FileType sml nnoremap <silent> <buffer> <leader>t :SMLTypeQuery<CR>
  au FileType sml nnoremap <silent> <buffer> gd :SMLJumpToDef<CR>

  " open the REPL terminal buffer
  au FileType sml nnoremap <silent> <buffer> <leader>is :SMLReplStart<CR>
  " close the REPL (mnemonic: k -> kill)
  au FileType sml nnoremap <silent> <buffer> <leader>ik :SMLReplStop<CR>
  " build the project (using CM if possible)
  au FileType sml nnoremap <silent> <buffer> <leader>ib :SMLReplBuild<CR>
  " for opening a structure, not a file
  au FileType sml nnoremap <silent> <buffer> <leader>io :SMLReplOpen<CR>
  " use the current file into the REPL (even if using CM)
  au FileType sml nnoremap <silent> <buffer> <leader>iu :SMLReplUse<CR>
  " clear the REPL screen
  au FileType sml nnoremap <silent> <buffer> <leader>ic :SMLReplClear<CR>
  " set the print depth to 100
  au FileType sml nnoremap <silent> <buffer> <leader>ip :SMLReplPrintDepth<CR>

  " ----- OTHER SETTINGS -----

  " Uncomment to try out conceal characters
  "au FileType sml setlocal conceallevel=2

  " Uncomment to try out same-width conceal characters
  "let g:sml_greek_tyvar_show_tick = 1
augroup END

