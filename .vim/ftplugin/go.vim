set smartindent

set tabstop=4
set shiftwidth=4
set noexpandtab

autocmd Filetype go map <buffer> <C-]> :GoDef<CR>
autocmd Filetype go map <buffer> <F3> :GoImports<CR>:write<CR>
