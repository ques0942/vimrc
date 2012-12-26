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
Bundle 'https://github.com/mitechie/pyflakes-pathogen.git'
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



filetype plugin indent on

" python settings
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
if &t_Co > 1
	syntax enable
endif

" keymap
noremap ;n :NERDTreeToggle<CR>
noremap ;j !python -m json.tool<CR>
noremap <Leader>j !python -m json.tool<CR>

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
