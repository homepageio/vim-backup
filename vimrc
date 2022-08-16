set number
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
colorscheme hybrid
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
set scrolloff=5

set hlsearch " 高亮搜索

" set foldmethod=indent " 设置折叠方式

let mapleader='\' 
" 拼写检查
noremap <leader>c :set spell!<cr>


inoremap <leader>w <Esc> :w<cr>
noremap <leader>w :w<cr>

inoremap <leader>q <Esc> :q!<cr> 
noremap <leader>q <Esc> :q!<cr>
" source 改动leader+s
noremap <leader>s <Esc> :source ~/.vimrc<cr>
" 插件安装leader+e
noremap <leader>e <Esc> :PlugInstall<cr>
" 右：leader+[ 下:leader+]分屏快捷键
noremap <leader>[ :set splitright<CR> :vsplit<cr>
noremap <leader>] :set splitbelow<CR> :split<cr>

map tu :tabe<CR>
map tn :-tabnext<CR>
map tp :+tabnext<CR>

map tx :r !figlet

" 窗口切换大小
noremap <leader><up> :res +5<CR>
noremap <leader><down> :res -5<CR>
noremap <leader><left> :vertical resize+5<CR>
noremap <leader><right> :vertical resize-5<CR>

" easycomplete
noremap gr :EasyCompleteReference<CR>
noremap gd :EasyCompleteGotoDefinition<CR>
noremap rn :EasyCompleteRename<CR>
noremap gb :BackToOriginalBuffer<CR>
let g:easycomplete_tab_trigger="<c-space>"
nnoremap <silent> <C-k> :EasyCompleteNextDiagnostic<CR>
nnoremap <silent> <C-j> :EasyCompletePreviousDiagnostic<CR>
inoremap jj <Esc> "

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <space> viw

noremap <C-d> <Esc>ddi

com! FormatJSON %!python3 -m json.tool

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
call plug#end()

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
