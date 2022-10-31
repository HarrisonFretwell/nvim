-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use 'nvim-lualine/lualine.nvim'
  use { 'nvim-treesitter/nvim-treesitter' }

	--lsp
	use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

	{'onsails/lspkind.nvim'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
	{'jose-elias-alvarez/null-ls.nvim'}
  }
}
	use {'glepnir/lspsaga.nvim'}


	use {
		"zbirenbaum/copilot.lua",
		event = "VimEnter",
		config = function()
		vim.defer_fn(function()
		  require("copilot").setup()
	 end, 100)
	end,
	}
	use {
		'goolord/alpha-nvim',
		config = function ()
		   require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end
	}

	use 'cocopon/iceberg.vim'
	use 'arcticicestudio/nord-vim'
	use 'rakr/vim-two-firewatch'

	use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
        require("catppuccin").setup {
            flavour = "macchiato" -- mocha, macchiato, frappe, latte
        }
        vim.api.nvim_command "colorscheme catppuccin"
		end
	}
	use 'tpope/vim-commentary'
	use 'kyazdani42/nvim-web-devicons'
	-- Navgiation
	use {
  "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup()
    end,
}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'nvim-telescope/telescope-project.nvim'}
	use {'nvim-telescope/telescope-file-browser.nvim'}

	use 'windwp/nvim-ts-autotag'
	use 'windwp/nvim-autopairs'
	use 'tpope/vim-surround'
	-- Prettier
	use 'MunifTanjim/prettier.nvim'

	-- Git
	use 'lewis6991/gitsigns.nvim'
	use { 'TimUntersberger/neogit', requires = {'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim' } }


	use "folke/which-key.nvim"

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

end)
