"========
"插件安装
"========
call plug#begin('~/.config/nvim/plugged')
"在这里添加插件
"eg：Plug 'user/repository'

"美化插件
Plug 'hardcoreplayers/spaceline.vim'
Plug 'hardcoreplayers/vim-buffet'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'hardcoreplayers/dashboard-nvim'
" Plug 'Yggdroot/indentLine',{ 'on': 'BufReadPre' }
"主题插件
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'hardcoreplayers/oceanic-material'
Plug 'mhartington/oceanic-next'
Plug 'liuchengxu/space-vim-theme'
"功能插件
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'tyru/caw.vim'
Plug 'tenfyzhong/CompleteParameter.vim'
Plug 'metalelf0/supertab'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/vim-easy-align'
Plug 'voldikss/vim-translator'
Plug 'rhysd/accelerated-jk'
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'tyru/open-browser.vim'
Plug 'junegunn/limelight.vim', {'on': 'Goyo'}
Plug 'easymotion/vim-easymotion'
Plug 'kien/rainbow_parentheses.vim'
Plug 'chrisbra/changesPlugin'
Plug 'liuchengxu/vista.vim', {'on':'Vista'}
Plug 'kristijanhusak/defx-git', {'on':'Defx'}
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'junegunn/vim-peekaboo'
Plug 'voldikss/vim-floaterm', { 'on': 'FloatermNew' }
Plug 'simnalamburt/vim-mundo'
Plug 'Chiel92/vim-autoformat', {'on':'Autoformat'}
Plug 'honza/vim-snippets'
Plug 'dhruvasagar/vim-table-mode', { 'for': 'markdown' }
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'dir': '~/.vim/bundle/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'

call plug#end()
