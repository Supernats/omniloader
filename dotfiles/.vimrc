map ; :

set rnu
set smartindent
syntax on
set ai
set aw
set ts=2
set sw=2
set list
set expandtab
set softtabstop=2
filetype indent plugin on

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
