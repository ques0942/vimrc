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

" flake8を保存時に自動実行
autocmd FileType python call s:python_settings()
function! s:python_settings()
	autocmd BufWritePost <buffer> call Flake8()
endfunction

" flake8の設定
" 無視する警告、エラーの設定
let g:flake8_ignore="E126, E128"

" import template
autocmd BufNewFile *.py 0r $HOME/.vim/template/python.txt
