# Vim

# #0 教程

[TOC]

[上古神器Vim：从恶言相向到爱不释手 - 终极Vim教程01 - 带你配置属于你自己的最强IDE_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV164411P7tw?share_source=copy_web)

[GitHub - theniceboy/.vim: I'm using Neovim now: https://github.com/theniceboy/nvim](https://github.com/theniceboy/.vim)

# #1 Vim(1)

- 模式
    - Normal模式
    - Insert模式
        - i、a、I、A
    - Visual模式、Block Visual模式
- 基本快捷键
    - 删除当前字符 —— x
    - 改变 —— c
        - 改变词 —— ciw
    - 下一个词首 —— w
    - 上一个词首 —— b
    - 下一个词尾 —— e
    - 上一个词尾 —— 未知
    - 词中 —— i
    - 寻找下一个符合的位置 —— f
        - 删除至某字符 —— df<某字符>
    - 回到行首 —— 0
    - 当前行置为中心 —— zz
    - 设定颜色 —— :color
        - 默认颜色 —— :color default
- <operation><motion>
    - 操作+动向
    - 重复操作 —— 对本行操作
- 配置文件
    - ~/.vim/vimrc
- 配置语句
    - 更改键位（涉及递归） —— noremap
    - 更改键位（不涉及递归）—— map
    - 回车 —— <CR>
    - 无操作 —— <nop>
    - 运行 —— exec
- :source $MYVIMRC<RC> —— 重载配置文件
- 高亮 —— syntax on
- 设置行号 —— set number
    - 设置相关行号 —— set relativenumber
    - 取消相关行号 —— set norelativenumber
- 显示编辑行 —— set cursorline
- 自动换行 —— set wrap
- 显示指令 —— set showcmd
- 普通模式输入指令自动补全 —— wildmenu
- 高亮搜索 —— hlsearch
    - 边输入边高亮 —— incsearch
    - 取消高亮搜索 —— nohlsearch
    - 忽略大小写搜索 —— ignorecase
    - 只能大小写搜索 —— smartcase
    - 下一个 —— n
    - 上一个 —— N
    - 退出搜索范围 —— 回车
    - 取消搜索 —— LEADER+回车
- 设置<LEADER>键 —— let mapleader = “ ”（默认/）
- 分屏
    - 上下分屏 —— :split
    - 左右分屏 —— :vsplit
- 插件安装
  
    [GitHub - junegunn/vim-plug: Minimalist Vim Plugin Manager](https://github.com/junegunn/vim-plug)
    
    [GitHub - vim-airline/vim-airline: lean & mean status/tabline for vim that's light as air](https://github.com/vim-airline/vim-airline)
    
    [GitHub - ycm-core/YouCompleteMe: A code-completion engine for Vim](https://github.com/ycm-core/YouCompleteMe)
    

---

YouCompleteMe server problem只需要python3编译YCM即可，不用改vim

---

# #2 Vim(2)

[上古神器Vim：进阶使用/配置、必备插件介绍 - 终极Vim教程02 - 带你配置属于你自己的最强IDE_哔哩哔哩_bilibili](https://b23.tv/XTcwJjw)

- Visual Block模式 —— ctrl+
    - esc退出并应用
- Visual模式使用普通模式指令 —— normal
    - :输入normal，输入指令
- 分屏 —— :split
    - 向下分屏 —— sl
    - 向下分屏 —— sr
    - 向下分屏 —— su
    - 向下分屏 —— sd
    - 退出分屏 —— Q
    - 切换分屏 —— <LEADER>+h/j/k/l
    - 更改分屏大小 —— <LEADER>+↑/↓/←/→
    - 切换为左右分屏 —— sv
    - 切换为上下分屏 —— sh
- 标签 —— :table
    - 打开新的标签页 —— tu
    - 左标签页 —— -tabnext —— t-
    - 右标签页 —— +tabnext —— t=
- 插件预设置
    - 去除老设置对新插件的功能影响 —— set nocompatible
    - 一般插件需要写入
        - filetype on
        - filetype indent on
        - filetype plugin on
        - filetype plugin indent on
- 使用鼠标 —— set mouse=a
- 设置编码格式 —— set encoding=utf-8
- 配色保证 —— let &t_ut=’’
- 缩进设置
    - set expandtab
    - set tabstop=2
    - set shiftwidth=2
    - set softtabstop=2
    - tw=0
    - indentexpr=
- 显示行尾空格 —— list
    - listchars=tab:→\ ,trail:∎
- 普通模式退格键由行首回行尾 —— set backspace=indent,eol,start
- 光标设置（失败）
    - let &t_SI = “\<Esc>]50;CursorShape=1\x7”
    - let &t_SR = “\<Esc>]50;CursorShape=2\x7”
    - let &t_EI = “\<Esc>]50;CursorShape=0\x7”
- 底部状态栏位置 —— set laststatus=2
- 执行指令默认在当前目录 —— set autochdir
- 第二次打开文件光标回到上一次编辑位置 ——
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    - 插件
    - nerdtree —— 文件目录
        - 启动 —— tt
        - 帮助 —— ?
    - YouCompleteMe —— 代码补全
        - 需要安装
    - ale —— 代码纠错
    - tagbar —— 函数列表
    - undotree —— 文件修改历史
        - 打开undotree —— L
    - markdown-preview —— md预览
  

# #3 Vim(3)

[「妈妈不会告诉你的Vim技巧」 -Vim终极教程03 - 带你配置属于你自己的最强IDE_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1r4411G7de?share_source=copy_web)

- 上下编辑预留行 —— set scrolloff=5
- 拼写检查 —— :set spell!<CR> —— <LEADER>sc
    - 错误纠正列表 —— z=
    - 自动联想 —— ctrl+x s（失败，会无响应）
- Ctrl+x —— <C-x>
- 回到上一次编辑位置 —— ctrl+o
    - 再回到上一次编辑位置 —— ctrl+i
    - **新打开vim也可使用**
- 自动配置安装自定义vim（待）
- 代码内打开另一文件 —— gf
    - **结合ctrl+o与ctrl+i**
- 智能马桶.conf 保存有问题
    1. 先另存为temp再管理员权限移动
    2. :w !sudo tee %
        1. ! —— 终端下指令
        2. tee —— 输入流
        3. % —— 当前文件
- 空缺补全（≤++>）
    - map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
- 大字 —— :figlet —— tx
- 读取 —— :r —— r
- 转换为html —— :%TOhtml
- 数字加1 —— <C-a>
- 数字减1 —— <C-x>
