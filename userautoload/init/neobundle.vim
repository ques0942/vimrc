" Bundle設定
if 0 | endif

if has('vim_starting')
    if &compatible
        set nocompatible
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins
" vim-ref
NeoBundle 'https://github.com/thinca/vim-ref'
" alo
NeoBundle 'w0rp/ale'
" flake8
NeoBundle 'https://github.com/nvie/vim-flake8.git'
" quickrun
NeoBundle 'https://github.com/thinca/vim-quickrun.git'
" fugitive
NeoBundle 'https://github.com/tpope/vim-fugitive.git'
" align
NeoBundle 'https://github.com/vim-scripts/Align.git'
" lightline
NeoBundle 'https://github.com/itchyny/lightline.vim'
" vim-indent-guides
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides'
" vim-trailing-whitespace
NeoBundle 'https://github.com/bronson/vim-trailing-whitespace'

"" python
" jedi-vim
NeoBundle 'https://github.com/davidhalter/jedi-vim.git'
" pyenv
NeoBundleLazy 'lambdalisue/vim-pyenv', {
        \ 'depends': ['davidhalter/jedi-vim'],
        \ 'autoload': {
        \   'filetypes': ['python', 'python3'],
        \ }}

"" javascript
" yajs.vim
NeoBundle 'othree/yajs.vim'
" javascript-libraries-syntax.vim
NeoBundle 'othree/javascript-libraries-syntax.vim'

"" html5
" html5.vim
NeoBundle 'othree/html5.vim'

"" css3
" vim-css3-syntax
NeoBundle 'hail2u/vim-css3-syntax'

"" colorscheme
NeoBundle 'wombat256.vim'
NeoBundle 'desert.vim'


call neobundle#end()

filetype plugin indent on
NeoBundleCheck
