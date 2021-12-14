call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'cohama/lexima.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'do':{ -> coc#util#install() }, 'branch' : 'release' }
Plug 'wojciechkepka/vim-github-dark'
Plug 'cdelledonne/vim-cmake'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mg979/vim-xtabline'
Plug 'zhou13/vim-easyescape'
Plug 'wlangstroth/vim-racket'
Plug 'Olical/conjure', {'tag': 'v4.23.0'}
Plug 'ThePrimeagen/vim-be-good'
Plug 'jez/vim-better-sml'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'Konfekt/FastFold' 
Plug 'romainl/vim-cool'

call plug#end()

source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/vimspector.vim
source $HOME/.config/nvim/status.vim
source $HOME/.config/nvim/terminal_theme.vim
source $HOME/.config/nvim/telescope.vim
source $HOME/.config/nvim/colorscript.vim
