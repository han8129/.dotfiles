vim.cmd [[packadd packer.nvim]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("Can't find packer")
  return
end

let.coc_global_extensions = { 'coc-java' ,'coc-html' ,'coc-css' ,'coc-cssmodules' ,'coc-emmet' ,'coc-highlight' ,'coc-stylelintplus' ,'coc-prettier' ,'coc-markdownlint' ,'@yaegassy/coc-tailwindcss3' ,'coc-json' ,'coc-tabnine' ,'coc-pyright' }

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {'neoclide/coc.nvim', branch = 'release'}
	use {'catppuccin/nvim', as = 'catppuccin'}
	use 'navarasu/onedark.nvim'
	use 'folke/tokyonight.nvim'
	use 'preservim/nerdtree'
end)
