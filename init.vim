"
"███╗   ███╗██╗   ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"████╗ ████║╚██╗ ██╔╝██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"██╔████╔██║ ╚████╔╝ ██║   ██║██║██╔████╔██║██████╔╝██║
"██║╚██╔╝██║  ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"██║ ╚═╝ ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"╚═╝     ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" Github@KyleJKC
" Bilibili@kyleJKC

"============
"首次安装使用
"============
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let has_special_config_file = 1
if empty(glob('~/.config/nvim/_special_config.vim'))
  let has_special_config_file = 0
  silent! exec "!cp ~/.config/nvim/default_configs/_special_config_default.vim ~/.config/nvim/_special_config.vim"
endif
source ~/.config/nvim/_special_config.vim

let has_language_config_file = 1
if empty(glob('~/.config/nvim/_language_config.vim'))
  let has_language_config_file = 0
  silent! exec "!cp ~/.config/nvim/default_configs/_language_config_default.vim ~/.config/nvim/_language_config.vim"
endif
source ~/.config/nvim/_language_config.vim

let has_coc_config_file = 1
if empty(glob('~/.config/nvim/plug_configs/_coc_config.vim'))
  let has_coc_config_file = 0
  silent! exec "!cp ~/.config/nvim/default_configs/_coc_config_default.vim ~/.config/nvim/plug_configs/_coc_config.vim"
endif
source ~/.config/nvim/plug_configs/_coc_config.vim

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
set mouse=a
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
set ttyfast
let mapleader=" "
vnoremap Y "+y
exec "nohlsearch"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"============
"基本键位设置
"============
"     ^
"     w
" < a   d >
"     s
"     v
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
inoremap jj <esc>

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

map <LEADER>sc :set spell!<CR>
map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>j4d

"========
"语言运行
"========
source ~/.config/nvim/_language_config.vim

"========
"插件安装
"========
call plug#begin('~/.config/nvim/plugged')
"在这里添加插件
"eg：Plug 'user/reponsitory'

"美化插件
Plug 'hardcoreplayers/spaceline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'yggdroot/indentline'
Plug 'hardcoreplayers/dashboard-nvim'
"主题插件
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'rakr/vim-one'
Plug 'sainnhe/forest-night'
Plug 'hardcoreplayers/oceanic-material'
"功能插件
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'rhysd/accelerated-jk'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'easymotion/vim-easymotion'
Plug 'kien/rainbow_parentheses.vim'
Plug 'chrisbra/changesPlugin'
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'kristijanhusak/defx-git'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'junegunn/vim-peekaboo'
Plug 'mbbill/undotree'
Plug 'voldikss/vim-floaterm'
Plug 'Chiel92/vim-autoformat'
Plug 'honza/vim-snippets'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', {'do':'cd app & npm install'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'dir': '~/.vim/bundle/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

"============
"功能插件设置
"============
"COC
source ~/.config/nvim/plug_configs/_coc_config.vim

"floaterm设置
let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'
noremap <LEADER>ftn :FloatermNew<CR>
noremap <LEADER>ftk :FloatermKill<CR>

"Goyo设置
noremap <LEADER>gy :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
let g:limelight_default_coefficient = 0.7
let g:limelight_paragraph_span = 1
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'
let g:limelight_priority = -1
function! s:goyo_enter()
  if has('gui_running')
    set fullscreen
    set background=light
    set linespace=7
  elseif exists('$TMUX')
    silent !tmux set status off
  endif
  let g:loaded_spaceline=0
  Limelight
endfunction
function! s:goyo_leave()
  if has('gui_running')
    set nofullscreen
    set background=dark
    set linespace=0
  elseif exists('$TMUX')
    silent !tmux set status on
  endif
  let g:loaded_spaceline =1
  Limelight!
endfunction
augroup user_plugin_goyo
  autocmd!
  autocmd! User GoyoEnter
  autocmd! User GoyoLeave
  autocmd  User GoyoEnter nested call <SID>goyo_enter()
  autocmd  User GoyoLeave nested call <SID>goyo_leave()
augroup END

"Accelerated-ws设置
nmap s <Plug>(accelerated_jk_gj)
nmap w <Plug>(accelerated_jk_gk)

"Clap设置
let g:clap_cache_directory = $DATA_PATH . '/clap'
let g:clap_theme = 'material_design_dark'
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_enable_icon = 1
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '

function! s:ClapSymbolHL() abort
  let s:current_bgcolor = synIDattr(hlID("Normal"), "bg")
  if s:current_bgcolor == ''
    hi ClapSymbol guibg=NONE ctermbg=NONE
  endif
endfunction

autocmd User ClapOnEnter call s:ClapSymbolHL()

"Easymotion设置
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0
let g:EasyMotion_smartcase = 1
map ' <Plug>(easymotion-overwin-f2)
nmap ' <Plug>(easymotion-overwin-f2)

"Vista设置
noremap <LEADER>v :Vista<CR>
noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
      \   "function": "\uf794",
      \   "variable": "\uf71b",
      \  }
" function! NearestMethodOrFunction() abort
"   return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

"Vim-table-mode设置
map <LEADER>tm :TableModeToggle<CR>

"Autoformat设置
nnoremap <LEADER>fm :Autoformat<CR>
let g:formatdef_custom_js = '"js-beautify -t"'
let g:formatters_javascript = ['custom_js']
au BufWrite *.js :Autoformat

"Vim-Which-Key设置
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>

"UndoTree设置
nnoremap <F5> :UndotreeToggle<CR>
if has("persistent_undo")
  set undodir=$HOME/.undodir
  set undofile
endif

" "Indentline设置
let g:indentLine_enabled = 1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = ['defx', 'denite', 'dashboard', 'tagbar', 'vista_kind', 'vista']
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel =1

"FZF模糊搜索设置
nmap <C-z> :<C-u>SessionSave<CR>
nmap <C-x> :<C-u>SessionLoad<CR>
nnoremap <silent> <C-h> :History<CR>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-t> :Colors<CR>
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <C-m> :Marks<CR>

let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
      \ 'source': s:list_buffers(),
      \ 'sink*': { lines -> s:delete_buffers(lines) },
      \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
      \ }))

noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

"MarkdownPreview设置
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 1
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {}
      \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
autocmd Filetype markdown inoremap <bufer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ] <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>

"Vim-go设置
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"Defx设置
noremap <LEADER>fe :Defx<CR>
call defx#custom#option('_', {
      \ 'resume': 1,
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'columns': 'indent:git:icons:filename',
      \ 'root_marker': ' ',
      \ 'toggle': 1
      \ })

call defx#custom#column('git', {
      \   'indicators': {
      \     'Modified'  : '•',
      \     'Staged'    : '✚',
      \     'Untracked' : 'ᵁ',
      \     'Renamed'   : '≫',
      \     'Unmerged'  : '≠',
      \     'Ignored'   : 'ⁱ',
      \     'Deleted'   : '✖',
      \     'Unknown'   : '⁇'
      \   }
      \ })

call defx#custom#column('mark', { 'readonly_icon': '', 'selected_icon': '' })

autocmd FileType defx call s:defx_mappings()

function! s:defx_mappings() abort
  nnoremap <silent><buffer><expr> <CR>     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
  nnoremap <silent><buffer><expr> <C-h>     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
  nnoremap <silent><buffer><expr> c defx#do_action('copy')
  nnoremap <silent><buffer><expr> m defx#do_action('move')
  nnoremap <silent><buffer><expr> p defx#do_action('paste')
  nnoremap <silent><buffer><expr> d defx#do_action('open')
  nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> x defx#do_action('remove')
  nnoremap <silent><buffer><expr> r defx#do_action('rename')
  nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> l defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> <C-h> defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
  nnoremap <silent><buffer><expr> a defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
  nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')

endfunction

function! s:defx_toggle_tree() abort
  " Open current file, or toggle directory expand/collapse
  if defx#is_directory()
    return defx#do_action('open_or_close_tree')
  endif
  return defx#do_action('multi', ['drop'])
endfunction

function! s:defx_toggle_tree() abort
  " Open current file, or toggle directory expand/collapse
  if defx#is_directory()
    return defx#do_action('open_or_close_tree')
  endif
  return defx#do_action('multi', ['drop'])
endfunction

" Rainbow_Parenthess设置
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"NerdCommenter设置
let g:NERDSpaceDelims            = 1                                    " 在注释符号后加一个空格
let g:NERDCompactSexyComs        = 1                                    " 紧凑排布多行注释
let g:NERDDefaultAlign           = 'left'                               " 逐行注释左对齐
let g:NERDAltDelims_java         = 1                                    " JAVA 语言使用默认的注释符号
let g:NERDCustomDelimiters       = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
let g:NERDCommentEmptyLines      = 1                                    " 允许空行注释
let g:NERDTrimTrailingWhitespace = 1                                    " 取消注释时删除行尾空格
let g:NERDToggleCheckAllLines    = 1                                    " 检查选中的行操作是否成功

"vim-cpp-enhanced-highlight设置
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

"auto-pairs设置
let g:AutoPairs = {',':' ','(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}

"============
"美化插件设置
"============

"Dashboard设置
let g:dashboard_custom_header = [
      \ '',
      \ '███████╗██╗   ██╗ ██████╗ ██╗    ██╗   ██╗███████╗    ██╗',
      \ '██╔════╝██║   ██║██╔═══██╗██║    ██║   ██║██╔════╝    ██║',
      \ '█████╗  ██║   ██║██║   ██║██║    ██║   ██║█████╗      ██║',
      \ '██╔══╝  ╚██╗ ██╔╝██║   ██║██║    ╚██╗ ██╔╝██╔══╝      ╚═╝',
      \ '███████╗ ╚████╔╝ ╚██████╔╝███████╗╚████╔╝ ███████╗    ██╗',
      \ '╚══════╝  ╚═══╝   ╚═════╝ ╚══════╝ ╚═══╝  ╚══════╝    ╚═╝',
      \ '',
      \ '                       [KyleJKC]',
      \ '',
      \ ]
let g:dashboard_default_executive ='fzf'
let g:dashboard_custom_shortcut={
      \ 'last_session'       : 'Ctrl X',
      \ 'find_history'       : 'Ctrl H',
      \ 'find_file'          : 'Ctrl P',
      \ 'change_colorscheme' : 'Ctrl T',
      \ 'find_word'          : 'Ctrl F',
      \ 'book_marks'         : 'Ctrl M',
      \ }

"spaceline设置
" let g:spaceline_seperate_style= 'slant-cons'
let g:spaceline_colorscheme = 'one'

"========
"主题设置
"========
let g:enable_bold_font=1
let g:enable_italic_font=1
let g:hybrid_transparent_background = 1
let &t_ut=''
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" let g:oceanic_material_transparent_background = 1
set termguicolors
set background=dark
color oceanic_material

"========
"善后设置
"========
if has_special_config_file == 0
  exec "e ~/.config/nvim/_special_config.vim"
endif

if has_language_config_file == 0
  exec "e ~/.config/nvim/_language_config.vim"
endif

if has_coc_config_file == 0
  exec "e ~/.config/nvim/plug_configs/_coc_config.vim" endif
endif
