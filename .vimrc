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
set cursorcolumn
set showmatch
set incsearch
set hlsearch
set lazyredraw
set foldenable
set foldlevelstart=10
set clipboard=unnamedplus

let mapleader=" "
let maplocalleader=","
" :imap ii <Esc>

" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3 

" Disables automatic commenting on newline:
" :set formatoptions-=cro
" :set formatoptions-=r formatoptions-=c formatoptions-=o
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" set paste

"Disable auto comment
map <leader>c :set formatoptions-=cro<CR>

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

" Start shell from vim
map <leader>d :sh<CR> 

"" Tabs Bindings
execute "set <A-t>=\et"
map <A-t> :tabnew<CR>

" tab switch
map <S-k> :tabnext<CR> 
map <S-j> :tabprevious<CR> 
" map <S-u> :tabmove<CR>
" execute "set <A-u>=\eu"
" map <A-u> :tabmove0<CR>

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

" tab move
map <localleader>1 :tabmove0<CR>
map <localleader>2 :tabmove1<CR>
map <localleader>3 :tabmove2<CR>
map <localleader>4 :tabmove3<CR>
map <localleader>5 :tabmove4<CR>
map <localleader>6 :tabmove5<CR>
map <localleader>7 :tabmove6<CR>
map <localleader>8 :tabmove7<CR>
map <localleader>9 :tabmove8<CR>
map <localleader>k :tabmove +1<CR>
map <localleader>j :tabmove -1<CR>

"Search highlighted words
" vnoremap // y/<C-R>"<CR>
" use * and # for same purpose

" no highlighting
map <leader>n :noh<CR>

"find and replace all
map <leader>r :.,$s/

"copy whole function
map <leader>yf va{Vy

"binary to hex
map <leader>b :%!xxd<CR>

" fuzzy search
nnoremap <C-T> :FZF<CR>
" execute "set <A-f>=\ef"
" map <A-f> :FZF<CR>

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
map <leader>S :vsplit<CR>
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
" Plugin 'sophacles/vim-processing'
Plugin 'tmhedberg/matchit'
Plugin 'shime/vim-livedown'
" Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'vim-syntastic/syntastic'
" Plugin 'w0rp/ale'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'dbeniamine/cheat.sh-vim'
Plugin 'mtdl9/vim-log-highlighting'

call vundle#end()            " required
filetype plugin indent on    " required

"colorscheme turtles
" colorscheme abstract
colorscheme dracula
" colorscheme gruvbox
" colorscheme wal
"automatically use wal scheme if not selected

"scriptStart
colorscheme solarized8_flat
"scriptEnd

" let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_server_python_interpreter = '/usr/bin/python3'

"hightlighting
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
hi Normal guibg=NONE ctermbg=NONE
" hi Search guibg=peru guifg=wheat
hi Search cterm=NONE ctermfg=grey ctermbg=lightyellow
hi Error NONE
hi ErrorMsg NONE
highlight LineNr ctermfg=grey 

" set omnifunc=syntaxcomplete#Complete
let g:EclimCompletionMethod = 'omnifunc'

" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

"Escape(esc) button timeoutb
 " set timeout timeoutlen=5000 ttimeoutlen=100
set timeout timeoutlen=400 ttimeoutlen=50

"vim-livedown(Markdown perview)
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1
" should the browser window pop-up upon previewing
let g:livedown_open = 0
" the port on which Livedown server will run
let g:livedown_port = 1337
" the browser to use, can also be firefox, chrome or other, depending on your executable
let g:livedown_browser = "firefox"
" nmap gm :LivedownToggle<CR>
" port 1337
nmap gm :LivedownPreview<CR>

"java
"processing
" map <leader>p :!pj<CR>

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

"javascript
let g:javascript_plugin_jsdoc = 1

""syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"ALE
" map <leader>a :ALEToggle<CR>

"cheat.sh
"<leader>KK --> Open in new window
"<leader>KB --> Open in new buffer window
"<leader>KP --> Directly paste to file
" let g:syntastic_javascript_checkers = [ 'jshint' ]
" let g:syntastic_ocaml_checkers = ['merlin']
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_shell_checkers = ['shellcheck']

" Make file (compile)
map <leader>m :!sudo make install<cr>

" solve st problem while scrolling
set ttymouse=sgr

" setting for particular file
autocmd BufRead /DriveE/Projects/Git/notes/notes_dropdown set noswapfile
