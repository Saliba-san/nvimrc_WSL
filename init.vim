"Plugins
call plug#begin()
  "Colorschemes
  Plug 'sainnhe/gruvbox-material'
  "LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/diagnostic-nvim'
  "TreeSitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  "Telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  "Editor
  Plug 'airblade/vim-rooter'
call plug#end()
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" Global Settings
source ~/.config/nvim/globalsettings.vim
"Plugin Settings
source ~/.config/nvim/pluginsettings.vim
" Style
source ~/.config/nvim/style.vim
"Mappings
source ~/.config/nvim/maps.vim
"Scripts
source ~/.config/nvim/scripts/prosamode.vim
" Lua (LSP)
lua require("lsp_config")

