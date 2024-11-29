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
set synmaxcol=0
set ttyfast
set nocompatible		
set nocursorline
set regexpengine=1
set nu
syntax on
set re=0
set mouse=""
set signcolumn=number

let g:indentLine_enabled = 0

"Treesitter Syntax Highlight
lua << EOF
require'nvim-treesitter.configs'.setup {
    highlight = { enable = true, },
}
EOF

"C
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

"Position cursor at start of tab
set listchars=tab:\ \  list

"------------------------ COLOR THEME ------------------------
set termguicolors
"set colorcolumn=85
 
"Treesitter hi
hi @keyword.import.c guifg=#83a598
hi @comment.c guifg=#7f7e7f
hi @cComment guifg=#7f7e7f

"TRANSPARENCY CONFIG
"hi! Normal ctermbg=NONE guibg=NONE

"Change colorscheme per file
function! SetTheme(colorscheme)
    try 
        execute 'colorscheme ' . a:colorscheme
        "set rnu
        set nu
        "set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
        set guicursor=
    catch
        echohl ErrorMsg
        echomsg 'Error setting theme for python'
        echohl None
    endtry
endfunction

function! CTheme(colorscheme)
    try 
        execute 'colorscheme ' . a:colorscheme
        "set rnu
        set nu

    catch
        echohl ErrorMsg
        echomsg 'Error setting theme for C'
        echohl None
    endtry
endfunction

" ---------------------- SET CURSOR HERE ----------------------
set guicursor=
" ---------------------- COLORSCHEME ---------------------------
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'bg0'
autocmd FileType python call SetTheme('industryv2')

autocmd FileType c call CTheme('lunaperchev2')
"autocmd FileType c call CTheme('industryv2')

"let current_hour = strftime("%H", localtime())
"if current_hour >= 18 || current_hour < 5
"  source $HOME/.config/nvim/colors/darkblue_main.vim
"else 
"  "source $HOME/.config/nvim/colors/realquiet.vim
"  colorscheme industry
"endif
"source $HOME/.config/nvim/colors/industryv2.vim
source $HOME/.config/nvim/colors/lunaperchev2.vim

"MISC
"-------------------------------------------------------------------------------------------------------------------------------------

"NERDTree
let NERDTreeMinimalUI=1
hi NERDTreeDir guifg=#969696 guibg=NONE
augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

"Discord RPC
let g:presence_buttons = 0
let g:presence_neovim_image_text = "vim + tmux = coconut oil"
let g:presence_workspace_text      = "buffer"

