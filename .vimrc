syntax enable
set number 
set relativenumber
set smartindent
set laststatus=2
set tabstop=4
set backupdir=/tmp
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

let mapleader=" "


" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3 

" Disables automatic commenting on newline:
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" set formatoptions-=cro
" set paste

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

nnoremap j gj
nnoremap k gk
inoremap { {<CR>}<up><end><CR>

"Search highlighted words
vnoremap // y/<C-R>"<CR>

" no highlighting
map <leader>n :noh<CR>

" fuzzy search
nnoremap <C-F> :FZF<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-e> <C-w>q
map <leader>i :new<CR>
map <leader>s :vnew<CR>
nnoremap <Leader>f :NERDTreeToggle<CR>


set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/fzf

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
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'dylanaraps/wal'
Plugin 'jiangmiao/auto-pairs'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'jwalton512/vim-blade'
" Plugin 'ternjs/tern_for_vim'

" colorscheme vim-material
"colorscheme turtles
" colorscheme wal
"automatically use wal scheme if not selected

" Dark
" set background=dark
" colorscheme vim-material

" Palenight
" let g:material_style='palenight'
" set background=dark
" colorscheme vim-material

" Oceanic
 " let g:material_style='oceanic'
 " set background=dark
 " colorscheme vim-material

" Light
" set background=light
" colorscheme vim-material

let g:ycm_server_python_interpreter = '/usr/bin/python2'

hi MatchParen cterm=none ctermbg=grey ctermfg=blue
hi Normal guibg=NONE ctermbg=NONE

highlight LineNr ctermfg=grey 
let g:EclimCompletionMethod = 'omnifunc'

" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

call vundle#end()            " required
filetype plugin indent on    " required
