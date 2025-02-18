local plugins = {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"rust-analyzer",
			},
		},
	},
	{
		"simrat39/rust-tools.nvim",
		ft = "rust",
		dependencies = "neovim/nvim-lspconfig",
		opts = function()
			-- return require "custom.configs.rust-tools"
		end,
		config = function(_, opts)
			require('rust-tools').setup(opts)
		end
	},
	{
		'saecki/crates.nvim',
		ft = { "toml" },
		config = function(_, opts)
			local crates = require('crates')
			crates.setup(opts)
			require('cmp').setup.buffer({
				sources = { { name = "crates" } }
			})
			crates.show()
		end,
	},
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end
	},
}
return plugins
