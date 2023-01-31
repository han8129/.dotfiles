source $HOME/.config/nvim/vim-plug/plugins.vim

set incsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent 
set linebreak
set mouse=a
set wildmenu
set clipboard=unnamedplus
set cursorline
syntax on

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

colorscheme slate

filetype plugin indent on
let g:vimtex_view_method = 'zathura'
set encoding=utf-8

highlight ColorColmn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)
