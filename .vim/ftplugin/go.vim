set smartindent

set tabstop=4
set shiftwidth=4
set noexpandtab

let g:go_fmt_commannd = "goimports"

autocmd Filetype go map <buffer> <C-]> :GoDef<CR>
autocmd Filetype go map <buffer> <F3> :GoImports<CR>:write<CR>
