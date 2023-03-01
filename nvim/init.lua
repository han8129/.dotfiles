options = { noremap = true, silent = true }

keymap = vim.api.nvim_set_keymap

let = vim.g
command = vim.api.nvim_create_user_command

function setKeymap(keyCombination, command, mode, extraOptions)
	mode = mode or 'n'
	extraOptions = extraOptions or options

	keymap(mode, keyCombination, command, extraOptions)
end

require("modules")
require("netrw")
require("options")

command('CurLex', 'Lex %:p:h', {})
command('TabTer',
	function() vim.cmd([[
		tabnew
		ter
	]]) end,
{})

let.mapleader = ","
setKeymap(':', '<Nop>')
setKeymap('<space>', '<Nop>', '')
setKeymap('<space>', ':')

setKeymap('<Esc>', '<C-\\><C-n>', 't')

setKeymap('<leader>l', '<C-w>l')
setKeymap('<leader>h', '<C-w>h')
setKeymap('<leader>j', '<C-w>j')
setKeymap('<leader>k', '<C-w>k')
