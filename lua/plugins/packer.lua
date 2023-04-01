local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	
	use 'wbthomason/packer.nvim'
	
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

end)
