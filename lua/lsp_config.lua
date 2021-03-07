local nvim_lsp = require "lspconfig"

local map = function(type, key, value)
  vim.fn.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end

local on_attach = function(client, bufnr)
  require'completion'.on_attach(client)
end

nvim_lsp.clangd.setup{
  on_attach = custom_attach;
};

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    }
  },
  indent = {
    enable = true
  },
	refactor = {
		highlight_definitions = { enable = true },
		navigation = {
			enable = true,
			keymaps = {
				goto_definition = "gnd",
				list_definitions = "gnD",
				list_definitions_toc = "gO",
				goto_next_usage = "<a-*>",
				goto_previous_usage = "<a-#>",
			},
		},
	},
}
