local globalOptions = {
	smartcase = true,
	laststatus = 2  ,
	hlsearch = false ,
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
	spell = false,
	cursorline = true,
	wrap = false,
	foldmethod = 'indent',
	foldenable = false,
}

for key, valua in pairs(windowOptions) do
	vim.wo[key] = valua
end

local bufferOptions = {
	expandtab = true,
	softtabstop = 4,
	tabstop = 4,
	shiftwidth = 4,
}

for key, valua in pairs(bufferOptions) do
	vim.bo[key] = valua
end

vim.cmd([[
	colorscheme tokyonight-storm
	set path+=**
]])
