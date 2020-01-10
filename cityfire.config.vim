" ------------------------------------------------------------------------------------------------------
" -----------------  Author: Chenping
" -----------------  Email: chenping314159@163.com
" -----------------  Date: 2016-07-10 20:54:28
" -----------------  Version 0.1
" -----------------  vim C++ config use Plug to manager plugger
" -----------------	:PlugInstall
" -----------------	:PlugClean
" -----------------	:Plugupdate
" ------------------------------------------------------------------------------------------------------

scriptencoding utf-8

"------------------------------------------------------------------------------------------------------
" 普通的配置
"------------------------------------------------------------------------------------------------------
set nocompatible

syntax on                      " Syntax highlighting
filetype plugin indent on      " Automatically detect file types
set autoindent                 " Indent at the same level of the previous line
set autoread                   " Automatically read a file changed outside of vim
set backspace=indent,eol,start " Backspace for dummies
set complete-=i                " Exclude files completion
set display=lastline           " Show as much as possible of the last line
set encoding=utf-8             " Set default encoding
set history=10000              " Maximum history record
set hlsearch                   " Highlight search terms
set incsearch                  " Find as you type search
set laststatus=2               " Always show status line
set mouse=a                    " Automatically enable mouse usage
set smarttab                   " Smart tab
set ttyfast                    " Faster redrawing
set viminfo+=!                 " Viminfo include !
set wildmenu                   " Show list instead of just completing

set nobackup
set noswapfile
set nowritebackup

set background=dark         " Assume dark background
set cursorline              " Highlight current line
set fileformats=unix,dos,mac        " Use Unix as the standard file type
set number                  " Line numbers on
set relativenumber          " Relative numbers on
set fillchars=vert:│,stl:\ ,stlnc:\ 

set shortmess=atOI " No help Uganda information, and overwrite read messages to avoid PRESS ENTER prompts
set ignorecase     " Case insensitive search
set smartcase      " ... but case sensitive when uc present
set scrolljump=5   " Line to scroll when cursor leaves screen
set scrolloff=3    " Minumum lines to keep above and below cursor
set nowrap         " Do not wrap long lines
set shiftwidth=4   " Use indents of 4 spaces
set tabstop=4      " An indentation every four columns
set softtabstop=4  " Let backspace delete indent
set splitright     " Puts new vsplit windows to the right of the current
set splitbelow     " Puts new split windows to the bottom of the current
set autowrite      " Automatically write a file when leaving a modified buffer
set mousehide      " Hide the mouse cursor while typing
set hidden         " Allow buffer switching without saving
set t_Co=256       " Use 256 colors
set ruler          " Show the ruler
set showcmd        " Show partial commands in status line and Selected characters/lines in visual mode
set showmode       " Show current mode in command-line
set showmatch      " Show matching brackets/parentthesis
set matchtime=5    " Show matching time
set report=0       " Always report changed lines
set linespace=0    " No extra spaces between rows
set pumheight=20   " Avoid the pop up menu occupying the whole screen
highlight clear SignColumn  " SignColumn should match background
"background color in relative mode
set clipboard+=unnamed

set t_ut=

set winminheight=0
set wildmode=list:longest,full
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶

set whichwrap+=<,>,h,l  " Allow backspace and cursor keys to cross line boundaries

set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set wildignore+=*swp,*.class,*.pyc,*.png,*.jpg,*.gif,*.zip
set wildignore+=*/tmp/*,*.o,*.obj,*.so     " Unix

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
"let &cpo = s:save_cpo
"unlet s:save_cpo
"------------------------------------------------------------------------------------------------------




"------------------------------------------------------------------------------------------------------
" 插件配置
"--------------------------------------------------------------------------------------------------------
"ag      {                " 搜索比grep 快多
"use default config
"}


"limelight.vim  {
" Color name (:help cterm-colors) or ANSI code
"let g:limelight_conceal_ctermfg = 'gray'
"let g:limelight_conceal_ctermfg = 240
"" Color name (:help gui-colors) or RGB color
"let g:limelight_conceal_guifg = 'DarkGray'
"let g:limelight_conceal_guifg = '#777777'
"}

"goyo.vim  {

"默认配置可自行修改
"g:goyo_width (default: 80)
"g:goyo_margin_top (default: 4)
"g:goyo_margin_bottom (default: 4)
"g:goyo_linenr (default: 0)
"g:goyo_callbacks ([before_funcref, after_funcref])

"Ensure :q to quit even when Goyo is active
"function! s:goyo_enter()
  "set hidden		"buffer close
  "let b:quitting = 0
  "let b:quitting_bang = 0
  "autocmd QuitPre <buffer> let b:quitting = 1
  "cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
"endfunction

"function! s:goyo_leave()
  "" Quit Vim if this is the only remaining buffer
  "if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    "if b:quitting_bang
      "qa!
    "else
      "qa
    "endif
  "endif
"endfunction
""autocmd User GoyoEnter Limelight
""autocmd User GoyoLeave Limelight!

"autocmd! User GoyoEnter call <SID>goyo_enter()
"autocmd! User GoyoLeave call <SID>goyo_leave()
"}






"ctrlp-funky		{
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
"}


"ctrlsf.vim		{
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_open_left = 1
let g:ctrlsf_ackprg = 'ag'   "设置ctrlsf 使用ag
"}


"incsearch.vim		{

"}


"vim-fswitch		{
"cpp和h之间切换快捷键

"}

"A.vim	{

"}


"YouCompleteMe		{
"安装方法
 "cd ~/.vim/bundle/YouCompleteMe
 "(1)./install.sh --clang-completer
 "(2)git submodule update --init --recursive
 "(3)sudo apt-get install cmake
 "(4)sudo apt-get install python-dev
 "(5)./install.sh --clang-completer
"let g:ycm_global_ycm_extra_conf = fnamemodify(expand('<sfile>'), ':h') . '/global_conf.py'

"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" ycm_path_to_python_interpreter is important!

"let g:ycm_min_num_of_chars_for_completion=2
"let g:ycm_cache_omnifunc=0
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_complete_in_comments=1
"let g:ycm_complete_in_strings=1
"let g:ycm_semantic_triggers =  {
"            \   'c' : ['->', '.'],
"            \   'cpp' : ['->', '.', '::'],
"            \ }
"let g:ycm_filetype_blacklist={
"            \   'tagbar' : 1,
"            \   'nerdtree' : 1,
"            \	'mundo': 1,
"            \   'unite' : 1,
"            \   'text' : 1,
"            \ 	'ctrlp' : 1,
"            \}

"}


"YCM-Generator		{
"generate a .ycm_extra_conf.py file for use with YouCompleteMe
"generate a .color_coded file for use with color_coded
"}


"nerdcommenter		{

"}

"vim-clang-format	{
"let g:clang_format#style_options = {
           "\ "AccessModifierOffset" : -4,
            "\ "AllowShortIfStatementsOnASingleLine" : "true",
            "\ "AlwaysBreakTemplateDeclarations" : "true",
            "\ "Standard" : "C++11"}

"}


"vim-protodef	{

"}


"DoxygenToolkit.vim		{
let g:DoxygenToolkit_briefTag_pre="@Brief\t"
let g:DoxygenToolkit_paramTag_pre="@Param\t"
let g:DoxygenToolkit_returnTag="@Returns\t"
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="chenPing creat this file, if anything you could emial chenping314159@163.com"
let g:DoxygenToolkit_versionString="0.1.00"
"let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_commentType="C++"
let g:DoxygenToolkit_classTag = "@class "
let g:DoxygenToolkit_fileTag = "\\file "
let g:DoxygenToolkit_blockTag = "\\name "
let g:DoxygenToolkit_dateTag = "\\date "
let g:DoxygenToolkit_authorTag = "\\author "
"let g:DoxygenToolkit_versionTag = "\\version "
"新建文件自动加入文件头
autocmd BufNewFile *.{h,hpp,c,cpp,inl} DoxAuthor
"}


"tczengming/headerGatesAdd.vim		{
let g:HeaderGatesAdd_prefix="__"
let g:HeaderGatesAdd_suffix="_H__"
"这个会添加extern “C”,现将其关闭
let g:insert_extern_c_flag=0
"}


"bronson/vim-trailing-whitespace	{

"}


"nerdtree	{
"设置一下长宽
let g:NERDTreeWinPos="right"
let g:NERDTreeShowHidden=0
let g:NERDTreeMinimalUI=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrowExpandable = '➤'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIgnore=[
            \ '\.py[cd]$', '\~$', '\.swo$', '\.swp$',
            \ '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$',
            \ ]
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}


"nerdtree-git-plugin	{
let g:NERDTreeIndicatorMapCustom = {
            \ 'Modified'  : '✹',
            \ 'Staged'    : '✚',
            \ 'Untracked' : '✭',
            \ 'Renamed'   : '➜',
            \ 'Unmerged'  : '═',
            \ 'Deleted'   : '✖',
            \ 'Dirty'     : '✗',
            \ 'Clean'     : '✔︎',
            \ 'Unknown'   : '?'
            \ }
let g:NERDTreeShowIgnoredStatus = 1
"}



"vim-nerdtree-syntax-highlight	{
"let g:NERDTreeSyntaxDisableDefaultExtensions = 1
"let g:NERDTreeDisableExactMatchHighlight = 1
"let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++']

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'


let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

"}


"tagbar	{
let tagbar_width=32
let g:tagbar_sort = 0
let g:tagbar_left = 1
let g:tagbar_compact=1

"let g:tagbar_type_cpp = {
 \ 'ctagstype' : 'c++',
 \ 'kinds'     : [
     \ 'c:classes:0:1',
     \ 'd:macros:0:1',
     \ 'e:enumerators:0:0',
     \ 'f:functions:0:1',
     \ 'g:enumeration:0:1',
     \ 'l:local:0:1',
     \ 'm:members:0:1',
     \ 'n:namespaces:0:1',
     \ 'enum'      : 'g',
     \ 'namespace' : 'n',
     \ 'class'     : 'c',
     \ 'struct'    : 's',
     \ 'union'     : 'u'
 \ }
\ }     \ 'p:functions_prototypes:0:1',
     \ 's:structs:0:1',
     \ 't:typedefs:0:1',
     \ 'u:unions:0:1',
     \ 'v:global:0:1',
     \ 'x:external:0:1'
 \ ],
 \ 'sro'        : '::',
 \ 'kind2scope' : {
     \ 'g' : 'enum',
     \ 'n' : 'namespace',
     \ 'c' : 'class',
     \ 's' : 'struct',
     \ 'u' : 'union'
 \ },
 \ 'scope2kind' : {
     \ 'enum'      : 'g',
     \ 'namespace' : 'n',
     \ 'class'     : 'c',
     \ 'struct'    : 's',
     \ 'union'     : 'u'
 \ }
\ },
"}


"vim-buftabline	{

"}


"undotree 		{                " 回退历史
set undofile
set undodir=~/.vim/undodir/
"}


"vim-startify	{
let g:startify_custom_header = [
            \ '+------------------------------+',
            \ '|  Welcome to my blog.         |',
            \ '|                              |',
            \ '|  http://hackers-delight.com/ |',
            \ '+----------------+-------------+',
            \]

let g:startify_custom_footer = [
            \ '+------------------------------+',
            \ '|  1.01 ^ 365 =  37.78         |',
            \ '+----------------+-------------+',
            \]

augroup SPACEVIM_START
autocmd!
autocmd VimEnter * if !argc() | Startify | endif
augroup END
let g:startify_list_order = [
        \ ['   Recent Files:'],
        \ 'files',
        \ ['   Project:'],
        \ 'dir',
        \ ['   Sessions:'],
        \ 'sessions',
        \ ['   Bookmarks:'],
        \ 'bookmarks',
        \ ['   Commands:'],
        \ 'commands',
        \ ]

"}


"rename.vim	{

"}


"vim-multiple-cursors	{
let g:multi_cursor_use_default_mapping=0
"}


"vim-easymotion  {
"let g:easymotion_smartcase = 1
"}


"vim-smooth-scroll  {

"}


"vim-expand-region	{

"}


"delimitMate  {

"}

"vim-cursorword	{

"}


"syntastic	{
"let g:syntastic_c_checkers          = ['c', 'h']
"let g:syntastic_cpp_checkers        = ['cpp', 'hpp', 'inl']
"let g:syntastic_error_symbol='✴'
"let g:syntastic_warning_symbol = '!'
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list            = 1
"let g:syntastic_check_on_open            = 1
"let g:syntastic_check_on_wq              = 0
"}


"Mark	{

"}


"rainbow	{
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound		" (), the default when toggling
au Syntax * RainbowParenthesesLoadSquare	" []
au Syntax * RainbowParenthesesLoadBraces	" {}
au Syntax * RainbowParenthesesLoadChevrons	" <>
"}

"vim-abolish	{

"}

"vim-easy-align	{

"}

"vim-move	{

"}



"quickrun 	{
"这个是编写脚本是时， .py/ .rb/*.sh, 直接运行，不用再执行
"let g:quickrun_config = {
			"\   "_" : {
			"\       "outputter" : "message",
			"\   },
			"\}
"let g:quickrun_no_default_key_mappings = 1
"}


"vim-gitgutter	{
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'
set updatetime=250
set signcolumn=yes
"}


