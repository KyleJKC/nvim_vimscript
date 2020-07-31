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
set display=lastline
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
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let &g:titlestring="
			\ %{expand('%:p:~:.')}%(%m%r%w%)
			\ %<\[%{fnamemodify(getcwd(), ':~')}\] - Neovim"

if exists('+previewpopup')
	set previewpopup=height:10,width:60
endif

if has('wildmenu')
	if ! has('nvim')
		set wildmode=list:longest
	endif

	set wildignorecase
	set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
	set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
	set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
	set wildignore+=application/vendor/**,**/vendor/ckeditor/**,media/vendor/**
	set wildignore+=__pycache__,*.egg-info,.pytest_cache,.mypy_cache/**
	set wildcharm=<C-z>
endif

augroup common "{{{
	autocmd!
	autocmd BufWritePost $VIM_PATH/{*.vim,*.yaml,vimrc} nested
				\ source $MYVIMRC | redraw
	autocmd BufWritePost,FileWritePost *.vim nested
				\ if &l:autoread > 0 | source <afile> |
				\   echo 'source ' . bufname('%') |
				\ endif
	autocmd BufWritePost * nested
				\ if &l:filetype ==# '' || exists('b:ftdetect')
				\ |   unlet! b:ftdetect
				\ |   filetype detect
				\ | endif
	autocmd WinEnter,InsertLeave * if &ft !~# '^\(denite\|clap_\)' |
				\ set cursorline | endif
	autocmd WinLeave,InsertEnter * if &ft !~# '^\(denite\|clap_\)' |
				\ set nocursorline | endif
	autocmd SwapExists * nested let v:swapchoice = 'o'
	autocmd VimResized * tabdo wincmd =
	autocmd VimLeave * if has('nvim') | wshada! | else | wviminfo! | endif
	autocmd FocusGained * checktime
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
	autocmd Syntax * if line('$') > 5000 | syntax sync minlines=200 | endif
augroup END "}}}
