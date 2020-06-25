# My Neovim Config

<center><img src="https://raw.githubusercontent.com/KyleJKC/Neovim/master/screenshot.png"></center>

## Introduction

### Move,Insert,Save,And Quit   
This is a **MODERN** Neovim Config. Use **"W,S,A,D"** to Move, **"Shift+w,s,a,d"** to move faster. Use **"e"** to insert. **"c"** subsitute **"d"**. so you can use **"cc"** to cut your text. You can use **"Ctrl+s"** to **save** your project, **Q(Shift+q)** to **quit whithout save**, **"Ctrl+q"** to **quit all windows with out save**. **"SPC sq"** to **quit with save**.Just like **Play A Game!** And that's why I write:"Power of Gamer" on startify(hhhhhhh).

## Plugins
There are **28 plugins**(include colorscheme) in my config, you can delete some of them or add some other plugins easily. Just add Plug 'Address of Plugin' to init.vim. I use hybrid-material colorscheme to my neovim, you can also change them, just go to the end of init.vim and change your colorscheme.

**HERE IS THE LIST OF PLUGINS, YOU MUST SEE!!!** 

| Beauty Plugins     | Feature Plugins               |
|--------------------|-------------------------------|
| Vim-startify       | Defx                          |
| Vim-airline        | Defx-icons                    |
| Vim-airline-themes | Defx-git                      |
| Indentline         | Vim-nerdtree-syntax-hignlight |
| Vim-devicons       | Vim-peekaboo                  |
|                    | Undotree                      |
|                    | Ultisnips                     |
|                    | Vim-table-mode                |
|                    | MarkdownPreview.nvim          |
|                    | Neoformat                     |
|                    | Vim-go                        |
|                    | fzf & fzf.nvim                |
|                    | NerdCommenter                 |
|                    | Atuo-Pairs                    |
|                    | COC.nvim                      |
|                    | Vim-cpp-enhanced-highlight    |
|                    | Vim-multiple-cursors          |

## Mapping Button List

**IF YOU HAVE SOME QUESTIONS DURING USE MY CONFIG, YOU CAN LOOK THIS!!!** 
| Mapping Keys          | Original Button                              |
|-----------------------|----------------------------------------------|
| w                     | k                                            |
| s                     | j                                            |
| a                     | h                                            |
| d                     | l                                            |
| W                     | 5k                                           |
| S                     | 5j                                           |
| Q                     | :wq`<CR>`                                    |
| `<C-q>`               | :qa`<CR>`                                    |
| `<LEADER>`w\          | :set splitright`<CR>`:vs`<CR>`               |
| `<LEADER>`w/          | :set nosplitright`<CR>`:vs`<CR>`             |
| `<LEADER>`w-          | :set nosplitbelow`<CR>`:sp`<CR>`             |
| `<LEADER>`w=          | :set splitbelow`<CR>`:sp`<CR>`               |
| `<LEADER>`fi          | :e ~/.config/nvim/init.vim`<CR>`             |
| `<LEADER>`si          | :source %`<CR>`                              |
| `<LEADER>`pi          | :PlugInstall`<CR>`                           |
| `<LEADER>`pu          | :PlugUpdate`<CR>`                            |
| `<LEADER>`fn          | :new`<CR>`                                   |
| `<C-h>`               | `<C-w>`h                                     |
| `<C-j>`               | `<C-w>`j                                     |
| `<C-k>`               | `<C-w>`k                                     |
| `<C-l>`               | `<C-w>`l                                     |
| `<C-s>`               | :w`<CR>`                                     |
| Q                     | :q`<CR>`                                     |
| tu                    | :tabe`<CR>`                                  |
| t-                    | :-tabnext`<CR>`                              |
| t=                    | :+tabnext`<CR>`                              |
| `<C-up>`              | :res +5`<CR>`                                |
| `<C-down>`            | :res -5`<CR>`                                |
| `<C-left>`            | :vertical resize-5`<CR>`                     |
| `<C-right>`           | :vertical resize+5`<CR>`                     |
| `<LEADER>`sv          | `<C-w>`t`<C-w>`H                             |
| `<LEADER>`sh          | `<C-w>`t`<C-w>`K                             |
| jj                    | `<ESC>`                                      |
| e                     | i                                            |
| E                     | I                                            |
| c                     | d                                            |
| k                     | w                                            |
| b                     | c                                            |
| m                     | r                                            |
| `<LEADER>`yy          | :`<C-u>`CocList -A --normal yank`<cr>`       |
| `<LEADER>`sc          | :set spell!`<CR>`                            |
| `<LEADER>` `<LEADER>` | `<ESC>`/`<++>`<CR>`:nohlsearch`<CR>`b4d      |
| r                     | :call CompileRunGcc()`<CR>`                  |
| `<leader>`rn          | `<Plug>`(coc-rename)                         |
| `<leader>`a           | `<Plug>`(coc-codeaction-selected)            |
| `<leader>`qf          | `<Plug>`(coc-fix-current)                    |
| if                    | `<Plug>`(coc-funcobj-i)                      |
| `<silent>`            | `<TAB> `Plug>`(coc-range-select)             |
| `<silent>`            | `<space>`e  :`<C-u>`CocList extensions`<cr>` |
| `<silent>`            | `<space>`s  :`<C-u>`CocList -I symbols`<cr>` |
| `<silent>`            | `<space>`p  :`<C-u>`CocListResume`<CR>`      |
| `<F5>`                | :UndotreeToggle`<CR>`                        |
| `<Leader>`ff          | :Files`<CR>`                                 |
| `<Leader>`bl          | :BLines`<CR>`                                |

**In Plug: Defx** 
| Mapping Keys                             | Original Button                                                              |
|------------------------------------------|------------------------------------------------------------------------------|
| `<silent>` `<buffer>` `<expr>` `<CR>`    | `<SID>`defx_toggle_tree()                                                    |
| `<silent>` `<buffer>` `<expr>`m          | defx#do_action('move')                                                       |
| `<silent>` `<buffer>` `<expr>`K          | defx#do_action('new_directory')                                              |
| `<silent>` `<buffer>` `<expr>`C          | defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time') |
| `<silent>` `<buffer>` `<expr>`r          | defx#do_action('rename')                                                     |
| `<silent>` `<buffer>` `<expr>`yy         | defx#do_action('yank_path')                                                  |
| `<silent>` `<buffer>` `<expr>`a          | defx#do_action('cd', ['..'])                                                 |
| `<silent>` `<buffer>` `<expr>` `<Space>` | defx#do_action('toggle_select') . 'j'                                        |
| `<silent>` `<buffer>` `<expr>`k          | line('.') == 1 ? 'G' : 'k'                                                   |
| `<C-N>`                                  | :bn`<CR>`                                                                    |
| `<C-P>`                                  | :bp`<CR>`                                                                    |

### Install

Before Installation, you **have to do**:
- [ ] Install nodejs
- [ ] Install python

#### GNU/Linux/MacOS
```bash
git clone --depth=1 https://github.com/KyleJKC/Neovim.git ~/.config/nvim
nvim
```
You will **see some errors**, never mind, just type **"SPC pi"** to install plugins.

#### Windows

clone this config to C:\Users\your user name\AppData\Local\nvim
You will **see some errors too**, but just type **"SPC pi"** to install plugins.

After Installation, you **might have** to do:
- [ ] pip3 install pynvim
- [ ] npm install -g neovim
- [ ] :CocInstall ...
- [ ] :checkhealth
- [ ] add some text to coc-setting.json
- [ ] Install language support

# By KyleJKC
