"==========
"编辑器设置
"==========
syntax on
set number
set relativenumber
set cursorline
set wrap
set wildmenu
set showcmd
set encoding=UTF-8
set scrolloff=4
set mouse=nv
set errorbells
set visualbell
set magic
set path+=**
set hlsearch
set incsearch
set ignorecase
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set autochdir
set undofile
set undodir=~/.config/nvim/undo
set ttyfast
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←
let mapleader=" "
vnoremap <C-c> "+y
exec "nohlsearch"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
