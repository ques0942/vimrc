" python settings
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
autocmd FileType python :inoremap # H#
" fold 設定
autocmd FileType python set foldmethod=indent
if &t_Co > 1
    syntax enable
endif

" import template
autocmd BufNewFile *.py 0r $HOME/.vim/template/python.txt
