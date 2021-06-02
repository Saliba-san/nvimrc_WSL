"Plugins
call plug#begin()
  "Colorschemes
  Plug 'sainnhe/gruvbox-material'
  Plug 'sainnhe/sonokai'
  "LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'ray-x/lsp_signature.nvim'
  "Compe
  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/vim-vsnip'
  "TreeSitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  "Telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  "Editor
  Plug 'airblade/vim-rooter'
  Plug 'godlygeek/tabular'
  "File Explorer
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  "Langs
    "SC
    Plug 'davidgranstrom/scnvim'
    "Md
    Plug 'plasticboy/vim-markdown'
call plug#end()
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

"Lua (LSP)
lua require("lsp_config")
"Global Settings
source ~/.config/nvim/globalsettings.vim
"Plugin Settings
source ~/.config/nvim/pluginsettings.vim
"Style
source ~/.config/nvim/style.vim
"Mappings
source ~/.config/nvim/maps.vim
"Scripts
source ~/.config/nvim/scripts/togglequickfix.vim
command CProsa :source ~/.config/nvim/scripts/prosamode.vim
command CRotate :source ~/.config/nvim/scripts/rotate.vim
