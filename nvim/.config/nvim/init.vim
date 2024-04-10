call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tomasiser/vim-code-dark'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'Konfekt/FastFold' 
Plug 'romainl/vim-cool' 
Plug 'neovim/nvim-lspconfig'
Plug 'ThePrimeagen/harpoon'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'windwp/nvim-autopairs'
call plug#end()

source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/vimspector.vim
source $HOME/.config/nvim/terminal_theme.vim
source $HOME/.config/nvim/telescope.vim
source $HOME/.config/nvim/status.vim

lua require('filenav')
lua << EOF
require'lspconfig'.pyright.setup{}
require("nvim-autopairs").setup {}
EOF

