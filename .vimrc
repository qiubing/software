"Set mapleader
let mapleader = ","
"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 


set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"original rpeos on github
Bundle 'bufexplorer.zip'
Bundle 'Mark'
Bundle 'The-NERD-tree'
Bundle 'closetag.vim'
Bundle 'The-NERD-Commenter'
Bundle 'matchit.zip'
Bundle 'AutoComplPop'
Bundle 'YankRing.vim'
Bundle 'taglist.vim'
Bundle 'SuperTab'
Bundle 'vimwiki'
Bundle 'winmanager'
Bundle 'FencView.vim'
Bundle 'Conque-Shell'
Bundle 'Vimpress'
Bundle 'Markdown'
Bundle 'c.vim'
Bundle 'snipMate'
Bundle 'python.vim--Vasiliev'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'lookupfile'
Bundle 'genutils'
Bundle 'OmniCppComplete'
Bundle 'ShowMarks'
Bundle 'netrw.vim'
Bundle 'clang-complete'
Bundle 'Auto-Pairs'
Bundle 'Lokaltog/vim-powerline'

"..................................
" vim-scripts repos

"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on


" \s 一键保存
func! SaveFile()
    exec "w"
endfunc
map  <leader>s :call SaveFile()<CR>
imap <leader>s <ESC>:call SaveFile()<CR>
vmap <leader>s <ESC>:call SaveFile()<CR>

" 主题 solarized
Bundle 'altercation/vim-colors-solarized'
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
" 主题 molokai
Bundle 'tomasr/molokai'
let g:molokai_original = 1
" 配色方案
set background=dark
set t_Co=256
    colorscheme solarized
    "colorscheme molokai
    "colorscheme phd


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 一般设定 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" " 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 

"history文件中需要记录的行数 
set history=100

" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" 与windows共享剪贴板 
set clipboard+=unnamed

" 载入文件类型插件 
filetype plugin on 

" 保存全局变量 
set viminfo+=! 

" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 
" 语法高亮
syntax enable
syntax on 

" 高亮字符，让其不受100列限制 
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
:match OverLength '\%101v.*' 

" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
set bufhidden=hide 

" 字符间插入的像素行数目 
set linespace=0 

" 增强模式中的命令行自动完成操作 
set wildmenu 

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=2 

"使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l 

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 

" 不让vim发出讨厌的滴滴声 
set noerrorbells 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 

" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 

" 在搜索的时候忽略大小写 
set ignorecase 

" 不要高亮被搜索的句子（phrases） 
set nohlsearch 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 

" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 

" 不要闪烁 
set novisualbell 

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 

" 总是显示状态行 
set laststatus=2 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
set cindent 

" 制表符为4 
set tabstop=4 

" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 

" 不要用空格代替制表符 
set noexpandtab 

" 不要换行 
set nowrap 

" 在行和段开始处使用制表符 
set smarttab

"关闭vi兼容模式
set nocp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" CTags的设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 按照名称排序 
let Tlist_Sort_Type = "name" 

" \tl                 打开Taglist/TxtBrowser窗口，在右侧栏显示
nmap <leader>tl :Tlist<CR><c-l>

"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1

"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File = 1

" 压缩方式 
let Tlist_Compart_Format = 1

" 不要关闭其他文件的tags 
let Tlist_File_Fold_Auto_Close = 1 

" 不要显示折叠树 
let Tlist_Enable_Fold_Column = 0 

"F9打开taglist窗口
map <silent> <F9> :TlistToggle<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Autocommands 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示 

if has("autocmd") 
autocmd FileType xml,html,c,cs,java,psh,cpp,python,vim,php,ruby set number 
autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o--> 
autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o 
autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
autocmd Filetype c,cpp set shiftwidth=4 | set expandtab
autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim 
autocmd BufReadPost * 
\ if line("'\"") > 0 && line("'\"") <= line("$") | 
\ exe " normal g`\"" | 
\ endif 
endif "has("autocmd")


""""""""""""""""""""""""""""""
" BufExplorer
 """"""""""""""""""""""""""""""
 let g:bufExplorerDefaultHelp=0       " Do not show default help.
 let g:bufExplorerShowRelativePath=1  " Show relative paths.
 let g:bufExplorerSortBy='mru'        " Sort by most recently used.
 let g:bufExplorerSplitRight=0        " Split left.
 let g:bufExplorerSplitVertical=1     " Split vertically.
 let g:bufExplorerSplitVertSize = 30  " Split width
 let g:bufExplorerUseCurrentWindow=1  " Open in new window.
 autocmd BufWinEnter \[Buf\ List\] setl nonumber

 """"""""""""""""""""""""""""""
 " winManager setting
  """"""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 
 

""""""""""""""""""""""""""""""
" lookupfile setting
 """"""""""""""""""""""""""""""
 let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
 let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
 let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
 let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
 let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
 if filereadable("./filenametags")                "设置tag文件的名字
 let g:LookupFile_TagExpr = '"./filenametags"'
 endif
 "映射LookupFile为,lk
 nmap <silent> <leader>lk :LUTags<cr>
 "映射LUBufs为,ll
 nmap <silent> <leader>ll :LUBufs<cr>
 "映射LUWalk为,lw
 nmap <silent> <leader>lw :LUWalk<cr>


 """"""""""""""""""""""""""""""
 " mark setting
  """"""""""""""""""""""""""""""
nmap <silent> <leader>hl <Plug>MarkSet
vmap <silent> <leader>hl <Plug>MarkSet
nmap <silent> <leader>hh <Plug>MarkClear
vmap <silent> <leader>hh <Plug>MarkClear
nmap <silent> <leader>hr <Plug>MarkRegex
vmap <silent> <leader>hr <Plug>MarkRegex


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
    set cst
    set nocsverb
 " add any database in current directory
    if filereadable("cscope.out")
       cs add cscope.out
    endif
    set csverb
endif

nmap <C-s>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-g>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-r>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-e>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-f>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-i>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-a>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""
"quickfix
""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:make<cr>
nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw :cw 10<cr> 
nmap <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>

"""""""""""""""""""""""""""""""""""""""""""""
"SuperTab
"""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

""""""""""""""""""""""""""""""
" netrw setting
" """"""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr> 

""""""""""""""""""""""""""""""""""""""""""""""""""
"clang
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_complete_copen=1    "If equal to 1, open quickfix window on error.
let g:clang_periodic_quickfix=1  "If equal to 1, it will periodically update the quickfix window.
let g:clang_snippets=1  "If equal to 1, it will do some snippets magic after a ( or a , inside function call.Not currently fully working.
let g:clang_close_preview=1  "If equal to 1, the preview window will be close automatically after a completion.
let g:clang_use_library=1
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'
let g:clang_auto_select = 1  " automatically select the first entry in the popup menu, but without inserting it into the code.
let g:clang_hl_errors = 1    "If equal to 1, it will highlight the warnings and errors the same way clang does it.
let g:clang_complete_macros = 1  "If clang should complete preprocessor macros and constants.
let g:clang_complete_patterns = 1   "If clang should complete code patterns, i.e loop constructs etc. If clang should complete code patterns, i.e loop constructs etc.


"let g:Powerline_symbols = 'unicode'
