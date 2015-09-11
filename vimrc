let mapleader=';'

filetype plugin on

set incsearch
set ignorecase
set nocompatible
set wildmenu

set laststatus=2
set ruler
set number
set cursorline
set cursorcolumn
set hlsearch

syntax enable
syntax on

set ts=3
set expandtab
set shiftwidth=3
set softtabstop=3

set foldmethod=indent
set nofoldenable


set guifont=Consolas:h11
" setting NERDTree
nnoremap <silent> <F5> :NERDTree<CR>
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeMirror<CR>

set t_Co=256
set background=dark
colorscheme freya

let Tist_Auto_Open=1
set tags=tags;
"set autochdir

let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Ctags_Cmd='/usr/bin/ctags'
map <silent> <leader>t :TlistToggle<CR>

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'

filetype plugin indent on

let g:ycm_error_symbol='>>'  
let g:ycm_warning_symbol='>*'
let g:ycm_disable_for_files_larger_than_kb=3000
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nmap <F4> :YcmDiags<CR>

let g:ycm_path_to_python_interpreter = '/usr/bin/python'
"设置全局配置文件的路径  
let g:ycm_global_ycm_extra_conf = '/home/zz/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm' 
""开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1  
"开启语义补全  
let g:ycm_seed_identifiers_with_syntax = 1  
"在接受补全后不分裂出一个窗口显示接受的项  
set completeopt-=preview  
"不显示开启vim时检查ycm_extra_conf文件的信息  
let g:ycm_confirm_extra_conf=0  
""每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0  
"在注释中也可以补全  
let g:ycm_complete_in_comments=1  
""输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=1  
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可  
let g:ycm_use_ultisnips_completer=0

map <F6> :cp<cr>
map <F7> :cn<cr>

if filereadable("cscope.out")
   cs add csope.out
elseif $CSCOPE_DB  != ""
   cs add $CSCOPE_DB
endif

