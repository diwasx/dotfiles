syntax enable
set number 
set relativenumber
set smartindent
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set cindent
set wildmenu
set showcmd
set cursorline
set showmatch
set incsearch
set hlsearch
set lazyredraw
set foldenable
set foldlevelstart=10
set clipboard=unnamedplus

"echo &compatible
"set nocompatible
"filetype
:filetype plugin indent on

nnoremap j gj
nnoremap k gk
inoremap { {<CR>}<up><end><CR>
nnoremap <C-N> :noh<CR>
nnoremap <C-F> :FZF<CR>


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'hzchirs/vim-material'
Plugin 'beigebrucewayne/Turtles'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'junegunn/fzf.vim'
Plugin 'dylanaraps/wal'

"colorscheme vim-material
"colorscheme turtles
"colorscheme wal
"automatically use wal scheme if not selected
hi MatchParen cterm=none ctermbg=grey ctermfg=blue
let g:ycm_server_python_interpreter = '/usr/bin/python2'
highlight LineNr ctermfg=grey 
hi Normal guibg=NONE ctermbg=NONE
let g:EclimCompletionMethod = 'omnifunc'
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

call vundle#end()            " required
filetype plugin indent on    " required

