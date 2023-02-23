require("modules")
options = { noremap = true, silent = true }

keymap = vim.api.nvim_set_keymap

let = vim.g

let.mapleader = ","

function setKeymap(keyCombination, command, mode, extraOptions)
	mode = mode or 'n'
	extraOptions = extraOptions or options

	keymap(mode, keyCombination, command, extraOptions)
end

require("netrw")

setKeymap('<leader>wri', ':write<CR>')
setKeymap('<leader>clo', ':close<CR>')
setKeymap('<leader>ter', ':tabnew<CR>:terminal powershell<CR>')
setKeymap('<leader>onl', ':only<CR>')
setKeymap('<Esc>', '<C-\\><C-n>', 't')

setKeymap('<C-l>', '<C-w>l')
setKeymap('<C-k>', '<C-w>k')
setKeymap('<C-h>', '<C-w>h')
setKeymap('<C-j>', '<C-w>j')

setKeymap('<leader>ex', ':Lex %:p:h<CR>')

let.coc_global_extensions = { 'coc-java' ,'coc-html' ,'coc-css' ,'coc-cssmodules' ,'coc-emmet' ,'coc-highlight' ,'coc-stylelintplus' ,'coc-prettier' ,'coc-markdownlint' ,'@yaegassy/coc-tailwindcss3' ,'coc-json' ,'coc-tabnine' ,'coc-pyright' }
setKeymap('<leader>coc', ':CocCommand ')


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

vim.cmd([[
	colorscheme habamax
	set path+=**
]])
