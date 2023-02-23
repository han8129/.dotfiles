vim.cmd([[
if &columns < 100
	" If the screen is small, occupy half
	let g:netrw_winsize = 50
else
	" else take 30%
	let g:netrw_winsize = 25
	endif
]])

local netrwOptions = {
	netrw_banner = 0,
	netrw_browse_split=4,
	netrw_liststyle = 0,
	netrw_preview = 1,
	netrw_altv = 1,
	netrw_keepdir = 0,
}


for key, valua in pairs(netrwOptions) do
	let[key] = valua
end
