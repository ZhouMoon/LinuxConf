"=================
" Config
"=================
" 主题 https://github.com/altercation/vim-colors-solarized
syntax enable
set background=dark
"colorscheme desert
colorscheme pablo
let g:onedark_termacolors=256

" 设置行号
set number
" 高亮搜索
set hlsearch
"搜索时忽略大小写
set ignorecase
" leader
let mapleader = "\<space>"
" 直接保存
"inoremap <leader>w <Esc>:w<cr>
"配置编码
set encoding=utf-8
" 自动缩进
set autoindent
"不创建备份文件
set nobackup
"不创建交换文件
set noswapfile
" 设置代码折叠方式
set foldmethod=indent
"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full
" 光标所在的当前行高亮
set cursorline
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
"set relativenumber
" 光标遇到括号自动高亮对应的括号
set showmatch
" 自动区分大小写
set  smartcase


" 垂直滚动时，光标距离顶部/底部的位置
set scrolloff=5
" 共用系统剪贴板
set clipboard=unnamed
" 设置查询是否循环
set wrapscan
"set nowrapscan
" 鼠标
set mouse=a
" 设置256色,默认8色
set t_Co=256


"=================
" 设置Tab 缩进为4空格
set tabstop=4
" 设置tab展开的（分开各个空格符）
set expandtab
" 设置软制表符宽度为4
set softtabstop=4
" 设置缩进的空格数为4
set shiftwidth=4
"=================



" nerdtree settings
" 目录管理配置
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

" easymotion settings
" 快速定位
nmap ss <Plug>(easymotion-s2)

"=================
" Plug
"=================
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" https://github.com/mhinz/vim-startify
" 启动插件-小牛牛
Plug 'mhinz/vim-startify'

" https://github.com/preservim/nerdtree
" 目录管理
Plug 'scrooloose/nerdtree'

" https://github.com/easymotion/vim-easymotion
" 内容快速定位
Plug 'easymotion/vim-easymotion'

" FZF
"安装了最新 fzf
"安装方法
" https://github.com/junegunn/fzf.git ~/.fzf
"source .bashrc
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"  缓冲区标签
Plug 'vim-airline/vim-airline'

" 选择文本
Plug 'gcmt/wildfire.vim'



" Initialize plugin system
call plug#end()
