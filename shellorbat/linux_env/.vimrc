"===============================================================================
"==================================Author:zhanhang==============================
"=====================================Year:2022=================================
"===============================================================================
filetype plugin on

" ######set for NERDTree############
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" 是否显示行号
let g:NERDTreeShowLineNumbers=1 


" ######set for Tlist############
" 只显示当前文件的taglist
let Tlist_Show_One_File=1
" 如果是最后一个窗口，直接退出
let Tlist_Exit_OnlyWindow=1 
" 在右侧显示
let Tlist_Use_Right_Window=1

nmap <F8> :NERDTreeToggle<CR>
nmap <F9> :TlistToggle<CR>
nmap <F2>  :NERDTreeFind<CR>
" ######搜索设置############
" 搜索高亮
set hlsearch
" 搜索不区分大小写
set ignorecase
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