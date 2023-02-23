vim.cmd [[packadd packer.nvim]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("Can't find packer")
  return
end

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'windwp/nvim-autopairs',
		config = function() require("nvim-autopairs").setup {} end
	}

	use {'neoclide/coc.nvim', branch = 'release'}
end)
