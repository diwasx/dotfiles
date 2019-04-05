"
"     ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"    ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"     ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"      ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"       ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"       ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"       ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"         ░░   ▒ ░░      ░     ░░   ░ ░        
"          ░   ░         ░      ░     ░ ░      
"         ░                           ░        
"
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
" :imap ii <Esc>



" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3 

" Disables automatic commenting on newline:
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" set formatoptions-=cro
" set paste

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

"For preview box show function property (display function detail)
set completeopt-=preview
map <leader>= :set completeopt+=preview<CR>
map <leader>- :set completeopt-=preview<CR>

nnoremap j gj
nnoremap k gk
" inoremap { {<CR>}<up><end><CR>


" Join
map <C-n> :j<CR>
" Tabs
"This override help page with keyword
map <C-t> :tabnew<CR>

"This override command execution
map <S-k> :tabnext<CR> 

map <S-j> :tabprevious<CR> 
map <S-u> :tabmove<CR>

" Problem  Meta (Alt) that keypress to set the 8th bit
execute "set <A-1>=\e1"
map <A-1> <Esc>:tabn1<CR>
execute "set <A-2>=\e2"
map <A-2> <Esc>:tabn2<CR>
execute "set <A-3>=\e3"
map <A-3> <Esc>:tabn3<CR>
execute "set <A-4>=\e4"
map <A-4> <Esc>:tabn4<CR>
execute "set <A-5>=\e5"
map <A-5> <Esc>:tabn5<CR>
execute "set <A-6>=\e6"
map <A-6> <Esc>:tabn6<CR>
execute "set <A-7>=\e7"
map <A-7> <Esc>:tabn7<CR>
execute "set <A-8>=\e8"
map <A-8> <Esc>:tabn8<CR>
execute "set <A-9>=\e9"
map <A-9> <Esc>:tabn9<CR>

" execute "set <A-k>=\ek"
" map <A-k><Esc>:tabnext<CR>
" execute "set <A-j>=\ej"
" map <A-j><Esc>:tabprevious<CR>


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
" filetype plugin on                  

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
" Plugin 'jiangmiao/auto-pairs'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'jwalton512/vim-blade'
Plugin 'sophacles/vim-processing'
" Plugin 'ternjs/tern_for_vim'
Plugin 'tmhedberg/matchit'
Plugin 'shime/vim-livedown'

call vundle#end()            " required
filetype plugin indent on    " required

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

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
hi Normal guibg=NONE ctermbg=NONE
" hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=grey ctermbg=lightyellow

highlight LineNr ctermfg=grey 
let g:EclimCompletionMethod = 'omnifunc'

" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

"vim-livedown(Markdown perview)
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1
" should the browser window pop-up upon previewing
let g:livedown_open = 0
" the port on which Livedown server will run
let g:livedown_port = 1337
" the browser to use, can also be firefox, chrome or other, depending on your executable
let g:livedown_browser = "chromium"
" nmap gm :LivedownToggle<CR>
nmap gm :LivedownPreview<CR>
