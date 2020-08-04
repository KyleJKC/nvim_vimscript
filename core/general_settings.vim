"==========
"编辑器设置
"==========
let mapleader=" "
syntax on
set nu
set relativenumber
set cursorline
set wrap
set wildmenu
set showcmd
set noequalalways
set laststatus=2
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
set infercase
set wrapscan
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=-1
set smarttab
set autoindent
set smartindent
set shiftround
set breakindentopt=shift:2,min:20
set foldmethod=indent
set foldlevel=99
set foldenable
set autochdir
set undofile
set undodir=~/.config/nvim/undo
set ttyfast
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←
set noruler
set noshowmode
set shortmess=aFc
set title
set titlelen=95
set pumblend=10
set winblend=10
exec "nohlsearch"

let &g:titlestring="
			\ %{expand('%:p:~:.')}%(%m%r%w%)
			\ %<\[%{fnamemodify(getcwd(), ':~')}\] - Neovim"

if exists('+previewpopup')
	set previewpopup=height:10,width:60
endif

