"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""base""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
" colorscheme hybrid
syntax on
" TAB
" 空格代替Tab"
" 注意: 插入模式下输入【ctrl+v+i】可以强制输入一个tab
set tabstop=4     " tabstop 表示一个 tab 显示出来是多少个空格的长度，默认8
set softtabstop=4 " softtabstop 表示在编辑模式的时候按退格键的时候退回缩进的长度，当使用 expandtab 时特别有用
set expandtab     " 当设置成 expandtab 时，缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进
set autoindent    " 自动缩进
set cindent       " 自动缩进补充
set shiftwidth=4  " 自动缩进空白字符个数
set modifiable
set scrolloff=5   " 光标距离底部5
set hlsearch " 高亮搜索



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""光标设置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor
set cursorline cursorcolumn


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""keypad""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader='\' 
" 拼写检查
noremap <leader>c :set spell!<cr>
inoremap <leader>w <Esc> :w<cr>
noremap <leader>w :w<cr>

inoremap <leader>q <Esc> :q!<cr> 
noremap <leader>q <Esc> :q!<cr>
inoremap jj <Esc> "

noremap <leader>s <Esc> :source ~/.config/nvim/init.vim<cr>
noremap <leader>e <Esc> :PlugInstall<cr>
" 快速分屏
noremap <leader>[ :set splitright<CR> :vsplit<cr>
noremap <leader>] :set splitbelow<CR> :split<cr>

map tu :tabe<CR>
map tn :-tabnext<CR>
map tp :+tabnext<CR>

map tx : r !figlet

noremap <leader><up> :res +5<CR>
noremap <leader><down> :res -5<CR>
noremap <leader><left> :vertical resize+5<CR>
noremap <leader><right> :vertical resize-5<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <space> viw

noremap <C-d> <Esc>ddi

com! FormatJSON %!python3 -m json.tool






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""plugin""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'w0ng/vim-hybrid'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'jayli/vim-easycomplete'
Plug 'preservim/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
let g:deoplete#enable_at_startup = 1
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" mark 标记插件
" mx        标记当前行
" dmx       删除标记x
" m<Space>  删除所有标记
" m/        列出所有标记
" ]`        跳转到下一个标记
" ['        跳转到上一个标记
Plug 'kshenoy/vim-signature'
Plug 'voldikss/vim-floaterm'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'gcmt/wildfire.vim'
call plug#end()






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""plugset"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>v :NERDTreeFind<cr>
noremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
			\ '\.git$', '\.hg$', '\.stversions$', '\.pyc$', '\.tags$',
			\ '\.pyo$', '\.svn$', '\.swp$', '\.DS_Store$', '\.tags_sorted_by_file',
			\ '\.sass-cache$', '\.egg-info$', '\.ropeproject$',
		\]


let g:ctrlp_map = '<c-p>'

nmap ss <Plug>(easymotion-s2)
let g:easycomplete_tab_trigger="<tab>"

" Tag 
nnoremap <leader>t :TagbarToggle<cr>
set updatetime=100 " 100ms
" easycomplete
noremap gr :EasyCompleteReference<CR>
noremap gd :EasyCompleteGotoDefinition<CR>
noremap rn :EasyCompleteRename<CR>
noremap gb :BackToOriginalBuffer<CR>
" let g:easycomplete_tab_trigger="<c-space>"
nnoremap <silent> <C-k> :EasyCompleteNextDiagnostic<CR>
nnoremap <silent> <C-j> :EasyCompletePreviousDiagnostic<CR>

" set voldikss/vim-floaterm
nnoremap   <leader>n    :FloatermNew<CR>
tnoremap   <leader>n    <C-\><C-n>:FloatermNew<CR>
" nnoremap   <leader>k    :FloatermKill<CR>
tnoremap   <leader>q    <C-\><C-n>:FloatermKill<CR>

nnoremap   <silent>   <F6>    :FloatermKill<CR>
tnoremap   <silent>   <F6>    <C-\><C-n>:FloatermKill<CR>
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

nnoremap <leader>d :UndotreeToggle<CR>
" FZF
"
nnoremap <leader>p : FZF<CR>
nnoremap <leader>f : Ag<CR>
nnoremap <leader>r : Rg<CR>
nnoremap <leader>b : Buffers<CR>
nnoremap q; : History<CR>

" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
let g:fzf_preview_window = ['right:70%', 'ctrl-/']

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
let g:fzf_preview_window = ['up:20%:hidden', 'ctrl-/']

" Empty value to disable preview window altogether
let g:fzf_preview_window = []

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""file create"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"新建.c,.h,.sh,.java文件，自动插入文件头 
 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
 
""定义函数SetTitle，自动插入文件头 
 
func SetTitle() 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: xuan.li") 
        call append(line(".")+2, "\# mail: 1547614915@qq.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "********File Name: ".expand("%")) 
        call append(line(".")+1, "******Author: xuan.li") 
        call append(line(".")+2, "******Mail: 1547614915@qq.com ") 
        call append(line(".")+3, "******Created Time: ".strftime("%c")) 
        call append(line(".")+4, "************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc
