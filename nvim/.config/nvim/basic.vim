"BASIC CONFIG
filetype plugin indent on  
filetype off	
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set clipboard+=unnamedplus
set lazyredraw
set synmaxcol=200
set ttyfast
set guicursor=
set nocompatible		
set nocursorline
set regexpengine=1
"set number
"set relativenumber
syntax on

"C
autocmd Filetype c setlocal expandtab tabstop=8 shiftwidth=8 softtabstop=8

""Change colorscheme per file
":autocmd BufEnter,FileType *
"\   if &ft ==# 'c' || &ft ==# 'cpp' | | 
"\   elseif &ft ==# 'hdl' || &ft ==# 'vhdl'| colorscheme retrohack | syntax off |
"\   else | colorscheme ghdark | syntax off
"\   endif

"Position cursor at start of tab
set listchars=tab:\ \  list

"Discord RPC
let g:presence_buttons = 0
let g:presence_neovim_image_text = "vim + tmux = coconut oil"
let g:presence_workspace_text      = "16_bit_hack_asm_"

"COLOR THEME
set termguicolors
set colorcolumn=90

"colorscheme retrohack
"set background=dark 

"TRANSPARENCY CONFIG
"hi! Normal ctermbg=NONE guibg=NONE

"CPP HIGHLIGHT
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

"MISC

"NERDTree
let NERDTreeMinimalUI=1
hi NERDTreeDir guifg=#969696 guibg=NONE
augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

