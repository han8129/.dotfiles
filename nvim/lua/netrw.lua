vim.cmd([[
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

if &columns < 100
	" If the screen is small, occupy half
	let g:netrw_winsize = 50
else
	" else take 30%
	let g:netrw_winsize = 25
	endif

function! NetrwMapping()
	nmap <buffer> h -^
	nmap <buffer> l <CR>
	nmap <buffer> . gh
	nmap <buffer> L <CR>:Lexplore<CR>
	nmap <buffer> P <C-w>z
endfunction

augroup netrw_mapping
	autocmd!
	autocmd filetype netrw call NetrwMapping()
augroup END
]])

local netrwOptions = {
	netrw_banner = 0,
	netrw_browse_split=4,
	netrw_liststyle = 0,
	netrw_preview = 1,
	netrw_altv = 1,
	netrw_keepdir = 0,
	netrw_localcopydircmd = 'cp -r',
}


for key, valua in pairs(netrwOptions) do
	let[key] = valua
end
