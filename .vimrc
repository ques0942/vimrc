set nocompatible
filetype off

" Bundle
set rtp+=~/.vim/vundle.git/
call vundle#rc()
" The NERD Tree
Bundle 'https://github.com/scrooloose/nerdtree.git'
" vim-ref
Bundle 'http://github.com/thinca/vim-ref'
" syntastic シンタックスチェック
Bundle 'https://github.com/scrooloose/syntastic.git'
" Bundle 'https://github.com/mitechie/pyflakes-pathogen.git'
Bundle 'https://github.com/nvie/vim-flake8.git'
" source-explorer
Bundle 'https://github.com/vim-scripts/SrcExpl.git'
Bundle 'trinity.vim'
Bundle 'taglist.vim'
" quickrun
Bundle 'https://github.com/thinca/vim-quickrun.git'
" w3m
Bundle 'https://github.com/yuratomo/w3m.vim.git'
" fugitive
Bundle 'https://github.com/tpope/vim-fugitive.git'
" Bash Support
Bundle 'https://github.com/vim-scripts/bash-support.vim.git'
" evervim
Bundle 'kakkyz81/evervim'
" evernote token
let g:evervim_devtoken='S=s32:U=36a870:E=143714674ed:C=13c199548ed:P=1cd:A=en-devtoken:H=900ea9c7494980398d7cdbde5c81a0eb'
" OpenBrownser
Bundle 'https://github.com/tyru/open-browser.vim.git'

" 補完
" jedi-vim
Bundle 'https://github.com/davidhalter/jedi-vim.git'

"colorschme
" wombat
Bundle 'wombat256.vim'
" desert
Bundle 'desert.vim'

" highlight
set hlsearch

filetype plugin indent on

" color scheme
colorscheme wombat256mod
"colorscheme desert

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
" autocmd FileType python call s:python_settings()
" function! s:python_settings()
" 	autocmd BufWritePost <buffer> call Flake8()
" endfunction

" flake8の設定
" 無視する警告、エラーの設定
let g:flake8_ignore="E126, E128"

" command
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" clipboard
" 以下二つは-clipboardでコンパイルされているので使えなかった。
" 無名レジスタに入るデータを*レジスタにも入れる
" :set clipboard+=unnamed
" ビジュアルモードで選択したテキストを*レジスタに入れる
" :set clipboard+=autoselect
" xselを使ってコピー
vmap <C-c> :w !xsel -ib<CR><CR>

" keymap
noremap ;n :NERDTreeToggle<CR>
noremap ;j !python -m json.tool<CR>
noremap <Leader>j !python -m json.tool<CR>

" OpenBrowser
noremap <Leader>o <Plug>(openbrowser-smart-search)

" SourceExplorer
" 手動実行
let gSrcExpl_RefreshTime = 0
" tagsの自動作成
let gSrcExpl_UpdateTags = 1
" 手動プレビュー
let gSrcExpl_RefreshMapKey = "<Space>"
" 戻る
let gSrcExpl_GoBackMapKey = "<C-b>"
" 機能のON/OFF
noremap <F8> :SrcExplToggle<CR>
" tagsの設定
:set tags=.tags;

" view
set background=dark

" import template
autocmd BufNewFile *.py 0r $HOME/.vim/template/python.txt
