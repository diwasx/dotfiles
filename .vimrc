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
"filetype plugin indent on

nnoremap j gj
nnoremap k gk
inoremap { {<CR>}<up><end><CR>
nnoremap <C-n> :noh<CR>

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
"colorscheme vim-material
colorscheme turtles
hi MatchParen cterm=none ctermbg=green ctermfg=blue
let g:ycm_server_python_interpreter = '/usr/bin/python2'
highlight LineNr ctermfg=grey
let g:EclimCompletionMethod = 'omnifunc'

call vundle#end()            " required
filetype plugin indent on    " required

