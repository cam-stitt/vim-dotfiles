" pathogen
execute pathogen#infect()

" appearance
syntax on
set background=light
colorscheme solarized

if has('gui_running')
	set guifont=Hack-Regular:h14
endif

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=#eee8d5
set cursorline

set number
set autoindent

filetype plugin indent on

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" swp directory
:set directory=~/.vim/swapfiles//

" backup directory
:set backupdir=~/.vim/backups//

" airline
let g:airline_theme='solarized'

" javascript
let g:javascript_plugin_jsdoc = 1

" go
let g:go_fmt_command = "goimports"

" youcompleteme
let g:ycm_use_clangd = 0
let g:ycm_autoclose_preview_window_after_completion = 1

