vim.cmd [[packadd packer.nvim]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'nvim-treesitter/nvim-treesitter'

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {'neoclide/coc.nvim', branch = 'release'}

end)

vim.g.coc_global_extensions = { 'coc-java' ,'coc-html' ,'coc-css' ,'coc-cssmodules' ,'coc-emmet' ,'coc-highlight' ,'coc-stylelintplus' ,'coc-prettier' ,'coc-markdownlint' ,'@yaegassy/coc-tailwindcss3' ,'coc-json' ,'coc-tabnine' ,'coc-pyright' }
keymap("n", "<leader>coc", ":CocCommand ", options)
