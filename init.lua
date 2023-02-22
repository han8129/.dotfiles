require("modules")
require("netrw")

local options = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ","
vim.g.maplocalleader = ","

keymap("n", "<leader>wri", ":w<CR>", options)
keymap("n", "<leader>clo", ":close<CR>", options)
keymap("n", "<leader>coc", ":CocCommand ", options)
keymap("t", "<C-c>", "<C-\\><C-n>", options)

local globalOptions = {
	smartcase = true,
	laststatus = 2  ,
	hlsearch = true ,
	incsearch = true,
	ignorecase = true,
	scrolloff = 3  ,
	wildmenu = true ,
	clipboard = 'unnamedplus',
	number = true,
	syntax = true,
	pumheight = 7,
}

for key, valua in pairs(globalOptions) do
	vim.o[key] = valua
end

local windowOptions = {
	spell = true,
	cursorline = true,
	wrap = false,
}

for key, valua in pairs(windowOptions) do
	vim.wo[key] = valua
end

local bufferOptions = {
	expandtab = true,
	softtabstop = 4,
	tabstop = 4,
}

for key, valua in pairs(bufferOptions) do
	vim.bo[key] = valua
end

local nonLuaNativeOptions = {
	'colorscheme habamax',
	'set path+=**',
}

for index = 1, #nonLuaNativeOptions do
	vim.cmd(nonLuaNativeOptions[index])
end
