set textwidth=72

set smartindent

set tabstop=4
set shiftwidth=4
set expandtab

map <F3> mf:FixWhitespace<CR>:%s/ / /ge<CR>:write<CR>'f
