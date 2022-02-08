"BASIC CONFIG
filetype plugin indent on  
filetype off	
set number
set relativenumber
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
set guicursor=
set nocompatible		
syntax on

"COLOR THEME
set termguicolors
set colorcolumn=85
"highlight ColorColumn ctermbg=0 guibg=lightgrey 

"colorscheme gruvbox
"set background=dark 

"TRANSPARENCY CONFIG
"hi! Normal ctermbg=NONE guibg=NONE

"CPP HIGHLIGHT
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

"MISC

"NERDTree
let NERDTreeMinimalUI=1
hi NERDTreeDir guifg=#969696 gui=NONE
augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

