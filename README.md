# <center>我的Neovim配置！<center>
  ![avatar](/home/kyle/.config/nvim/image/demo_1.png)
  ![avatar](/home/kyle/.config/nvim/image/demo_2.png)
![avatar](/home/kyle/.config/nvim/image/demo_3.png)

  * **请仔细阅读本介绍文档后使用本配置**

# 如何安装？

  ```sh
  git clone https://github.com/KyleJKC/nvim.git ~/.config/nvim
  nvim
  ```
# 安装后, 您需要:

  - [ ] 安装 `pynvim` (pip)
  - [ ] 安装 `nodejs`
  - [ ] 安装 `ripgrep`
  - [ ] 安装 nerd-fonts (此选项为可选，但使用nerd-font后，看起来真的不错)

## 可能需要:

  - [ ] 执行 `:checkhealth`
  - [ ] 确保你有Python
  - [ ] 编辑 `special_cofnig.vim` 进行配置
  - [ ] 执行 `pip3 install flake8` (用于代码检查)
  - [ ] 安装 `ctags` 用于显示函数/类/变量列表

# 特性
### 超级快！
  * 0.6ms
  * 将近40个插件
### 好上手！
  * W,S,A,D移动
  * 都是你熟悉的键位
### 功能强！
  * 强大的语言支持
  * 强大而轻量的插件
### 可定制！
  * 完全可以变成你自己的配置
  * 配置文件模块化
  ---

# NORMAL模式下的快捷键

  | 绑定后  | 绑定前          |
  |---------|-----------------|
  | `w`     | `k（逐渐加速）` |
  | `s`     | `j（逐渐加速）` |
  | `a`     | `h`             |
  | `d`     | `l`             |
  | `W`     | `5k`            |
  | `S`     | `5j`            |
  | `E`     | `<S-i>`         |
  | `R`     | `<S-a>`         |
  | `<C-s>` | `:w`            |
  | `<C-q>` | `:q`            |
  | `Q`     | `:wq`           |

#### **是的你没有看错，用Vim就跟打游戏一样简单！**
  **这些键位在init.vim中的基本键位设置下可定制**
  * 许多重新绑定的键我懒得写了，有兴趣去init.vim看吧...

  ---

# 强大的插件

## COC
  极其强大的Vim补全框架！
  通过`:CocConfig`打开配置
### 已经配置支持的语言：
  * C / C++ / Objective-C
  * Go
  * Pyhton

##### 想要配置别的语言十分简单，参考[COC官方WIKI](https://github.com/neoclide/coc.nvim/wiki/Language-servers)

### 顺带一提，你可以使用`Alt r`来运行你的代码
  ---

## Defx
  快速轻量的文件管理器，通过SPC f e打开

### Defx常用快捷键
  | 键位           | 功能                |
  |----------------|---------------------|
  | 如同Normal模式 | 上下左右移动        |
  | N              | 新建文件            |
  | c              | 复制文件            |
  | m              | 移动文件            |
  | x              | 删除文件            |
  | 回车           | 展开文件架/打开文件 |

  ---

## MarkdownTableMode
  轻松用Vim制作Markdown表格
#### SPC t m打开

Markdown编辑实用的快捷键
| 快捷键 | 呈现效果       |
|--------|----------------|
| `,n`   | ---            |
| `,b`   | 文本 **加粗**  |
| `,s`   | 文本~~中划线~~ |
| `,i`   | 文本 *斜体*    |
| `,d`   | `代码块`       |
| `,c`   | 大 `代码块`    |
| `,m`   | - [ ] 复选框   |
| `,p`   | 图片           |
| `,a`   | [超链接]()     |
| `,1`   | # 标题1        |
| `,2`   | ## 标题2       |
| `,3`   | ### 标题3      |
| `,4`   | #### 标题4     |
| `,l`   | --------       |

  ---

## Vim-clap和FZF
  两个都是非常好用的文件模糊查找器，都集成在了我的配置中
  * Dashboard中使用clap作为默认查找器，你当然可以在init.vim中的Dashboard设置下更换成FZF
  
  | Clap键位 | FZF键位 | 功能         |
  |----------|---------|--------------|
  | SPC f f  | `<C-p>` | 查找文件     |
  | SPC f a  | `<C-f>` | 查找文字     |
  | SPC t c  | `NONE`  | 实时更换主题 |

---

# 配置文件目录
### **为了方便管理配置文件，我将配置文件稍微模块化**

* 假设你在.config/nvim目录下：

#### 主要配置文件：`init.vim`
#### COC的配置文件：`plug_configs/_coc_config.vim`
#### 语言运行设置：`language_config.vim`
#### 你可能需要特别修改的配置（例如python路径）：`_special_config.vim`


---

###### **如果你认真看到了这里，说明你可以开始用我的配置了，使用愉快！**


