"============
"基本键位设置
"============
"     ^
"     w
" < a   d >
"     s
"     v
let mapleader=" "
noremap w k
noremap s j
noremap a h
noremap d l
noremap W 5k
noremap S 5j
noremap A 5h
noremap D 5l

noremap e i
noremap r a
noremap E I
noremap R A
noremap h w
noremap c d
noremap j c
noremap m r
noremap ; :
inoremap jk <esc>

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

map <C-s> :w<CR>
map <C-q> :q<CR>
map Q :wq<CR>
map <A-q> :qa<CR>
map k <nop>
map l <nop>

map <LEADER>/ :vsplit<CR>
map <LEADER>- :split<CR>

map <F1> :edit ~/.config/nvim/init.vim<CR>
map <F2> :source ~/.config/nvim/init.vim<CR>
map <F3> :PlugInstall<CR>
map <F4> :PlugUpdate<CR>

map <A-d> <C-w>l
map <A-w> <C-w>k
map <A-a> <C-w>h
map <A-s> <C-w>j

noremap tn :tabe<CR>
noremap ta :-tabnext<CR>
noremap td :+tabnext<CR>

noremap lg :FloatermNew lazygit<CR>
noremap <LEADER>fr :FloatermNew ranger<CR>

map <LEADER>sc :set spell!<CR>
map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>j4d

vnoremap <C-c> "+y
