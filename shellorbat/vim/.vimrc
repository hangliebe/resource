filetype plugin on
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1

nmap <F8> :TlistToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
set mouse=a
" 设置高亮光标行
set cursorline
hi CursorColumn cterm=NONE ctermbg=darked ctermfg=white guibg=darked guifg=white
" 与C语言语法一致
set cindent 

set number
" 自动补全
set completeopt=longest,menu