local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

  	use {
  		'VonHeikemen/lsp-zero.nvim',
  		branch = 'v1.x',
  		requires = 
		{
 		-- Soporte LSP
    		{'neovim/nvim-lspconfig'},
    		{
      			'williamboman/mason.nvim',
      			run = function() pcall(vim.cmd, 'MasonUpdate') end
    		},
    		{'williamboman/mason-lspconfig.nvim'},
    		-- Autocompletado
    		{'hrsh7th/nvim-cmp'},
    		{'hrsh7th/cmp-buffer'},
    		{'hrsh7th/cmp-path'},
    		{'saadparwaiz1/cmp_luasnip'},
    		{'hrsh7th/cmp-nvim-lsp'},
    		{'hrsh7th/cmp-nvim-lua'},

    		-- Snippets
    		{'L3MON4D3/LuaSnip'},
    		{'rafamadriz/friendly-snippets'},
  		}
	}
	
	use {
		"windwp/nvim-autopairs",
    		config = function() require("nvim-autopairs").setup {} end
	}

	use 'kdheepak/lazygit.nvim'

	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
	
	use 'pocco81/AutoSave.nvim'
		
	use 'Shatur/neovim-ayu'

	use {
  		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
    		requires = { 
			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",
    		}
  	}

	use {
     		'feline-nvim/feline.nvim',
      		requires = {
        		'lewis6991/gitsigns.nvim',
        		'nvim-web-devicons'
    		},
  	}

	-- tabs
  	use {
    		'nanozuki/tabby.nvim',
    		requires = { 'kyazdani42/nvim-web-devicons' },
  	}

end)
