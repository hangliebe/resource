
"===============================================================================
"==================================Author:zhanhang==============================
"=====================================Year:2022=================================
"===============================================================================
" 不与vi兼容
set nocompatible

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

" ######搜索设置############
" 搜索高亮
set hlsearch
" 搜索不区分大小写
" set ignorecase
" 设置环形搜索  反之可以 set nowrapscan
set wrapscan

set mouse=a
" 设置高亮光标行
set cursorline
" 与C语言语法一致
set cindent 

set number
" 自动补全
set completeopt=longest,menu
" 相对行号 
set relativenumber
" 设置单行字符数量提示符
set cc=120
" 缩进4个空格
set shiftwidth=4
" 缩进时候使用空格方式
set expandtab

" ######set for NERDTree#########
nmap <F8> :NERDTreeToggle<CR>
nmap <F2>  :NERDTreeFind<CR>

" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" 是否显示行号
let g:NERDTreeShowLineNumbers=1 

" ######set for Tlist############
nmap <F9> :TlistToggle<CR>
" 只显示当前文件的taglist
let Tlist_Show_One_File=1
" 如果是最后一个窗口，直接退出
let Tlist_Exit_OnlyWindow=1 
" 在右侧显示
let Tlist_Use_Right_Window=1

" 
" ######set for FZF############
nmap O :Files<CR>