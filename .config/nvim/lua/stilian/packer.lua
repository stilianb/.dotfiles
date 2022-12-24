return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

  -- Colorscheme --
	use({
		"catppuccin/nvim",
		as = "catppucin",
		config = function()
			vim.cmd("colorscheme catppuccin-macchiato")
		end,
	})
	
  -- Telescope --
  use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

  -- Treesitter --
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")

  -- Harpoon --
  use('theprimeagen/harpoon')

  -- Undotree --
  use("mbbill/undotree")

  -- vim/tmux nav --
  use("christoomey/vim-tmux-navigator")

  -- Vim Practice --
	use("ThePrimeagen/vim-be-good")

  -- Autopairs --
	use("windwp/nvim-autopairs")

  -- Tpope --
	use("tpope/vim-fugitive")
	use("tpope/vim-surround")
	use("tpope/vim-commentary")

  -- LSP --
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

  -- ALE / Prettier --
  use("dense-analysis/ale")
  use("MunifTanjim/prettier.nvim")
  use("jose-elias-alvarez/null-ls.nvim")

  -- Zen Mode --
  use("folke/zen-mode.nvim")
end)
