local options = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

vim.cmd([[
if &columns < 100
	" If the screen is small, occupy half
	let g:netrw_winsize = 50
els
	" else take 30%
	let g:netrw_winsize = 30
	endif
]])

keymap("", "<Space>", "<Nop>", options)

vim.g.mapleader = ","
vim.g.localleader = ","

keymap("n", "<leader>ex", ":Lex %:p:h<CR>", options)

local netrwOptions = {
	netrw_banner = 0,
	netrw_browse_split=4,
	netrw_liststyle = 0,
	netrw_preview = 1,
	netrw_altv = 1,
	netrw_keepdir = 0,
}


for key, valua in pairs(netrwOptions) do
	vim.g[key] = valua
end
