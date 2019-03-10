set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'valloric/youcompleteme'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'majutsushi/tagbar'
Plugin 'townk/vim-autoclose'
"Plugin 'tpope/vim-fugitive'
"Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
"Plugin 'ryanoasis/nerd-fonts'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Put your non-Plugin stuff after this line
colorscheme gruvbox
set background=dark    " Setting dark mode
syntax on
set t_Co=256

"Show line number
set number
set ruler
"Set highlight search
set hlsearch
noremap <F4> :set hlsearch! hlsearch?<CR>

"Change backspace config
set backspace=indent,eol,start

"tab navigation config
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Nerdtree config
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * lcd %:p:h
let NERDTreeShowHidden=1

" Tagbar config
nmap <F8> :TagbarToggle<CR>

" Fugitive config
set diffopt+=vertical
" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
 set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Enable highlighting of the current line
set cursorline

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'

" Devicons config
"set encoding=UTF-8

" Fonts config
"set guifont=Font\ Awesome\ 14

" Commant-T config
let g:CommandTFileScanner='watchman'
let g:CommandTMaxFiles=180000


