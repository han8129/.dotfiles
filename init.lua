
local options = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

local let = vim.g

let.mapleader = ","
let.maplocalleader = ","


keymap("n", "<leader>wri", ":write<CR>", options)
keymap("n", "<leader>clo", ":close<CR>", options)
keymap("n", "<leader>ter", ":tabnew<CR>:terminal powershell<CR>", options)
keymap("n", "<leader>onl", ":only<CR>", options)
keymap("t", "<Esc>", "<C-\\><C-n>", options)

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

require("modules")
require("netrw")

let.coc_global_extensions = { 'coc-java' ,'coc-html' ,'coc-css' ,'coc-cssmodules' ,'coc-emmet' ,'coc-highlight' ,'coc-stylelintplus' ,'coc-prettier' ,'coc-markdownlint' ,'@yaegassy/coc-tailwindcss3' ,'coc-json' ,'coc-tabnine' ,'coc-pyright' }
keymap("n", "<leader>coc", ":CocCommand ", options)

vim.cmd([[
	colorscheme habamax
	set path+=**
]])

