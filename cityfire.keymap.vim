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


"ag 快速搜索 {
":Ag [options] {pattern} [{directory}]
function! VisualSelection(direction, extra_filter) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'ag'
		call CmdLine("Ag \"" . l:pattern . "\" " )
	elseif a:direction == 'replace'
		call CmdLine("%s" . '/'. l:pattern . '/')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction
"--------------------------------------------------------------------
vnoremap <silent>ag :call VisualSelection('gv', '')<CR>
map <leader>ag :Ag
"--------------------------------------------------------------------
"}


"limelight	{
"--------------------------------------------------------------------
"nmap <Leader>l <Plug>(Limelight)
"xmap <Leader>l <Plug>(Limelight)
"--------------------------------------------------------------------
"}

"goyo.vim  {
"nnoremap <Leader>gy:Goyo<CR>
"}


"ctrlp		{
"ctrl-f/b file/buffer/mru之间切换
"ctrl + j/k 进行上下选择
"ctrl + x 在当前窗口水平分屏打开文件
"ctrl + t 在tab中打开
"--------------------------------------------------------------------
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_cmd = 'CtrlP'
"map <leader>f :CtrlPMRU<CR>
"--------------------------------------------------------------------
"}

"fzf快捷键 {
map <leader>p :Files<CR>
map <leader>b :Buffers<CR>
"}



"ctrlp-funky快捷键 {
" 进入当前文件的函数列表搜索
nnoremap <Leader>fu :CtrlPFunky<Cr>
"搜索当前光标下单词对应的函数
nnoremap <C-/> : execute 'CtrlPFunky ' . expand('<cword>')<Cr>
"}


"ctrlsf，		{
"这个可以替代使用ag命令
"<C-j> - Move cursor to next match.
"<C-k> - Move cursor to previous match.
"t - Like Enter but open file in a new tab.
"O - Like Enter but always leave CtrlSF window opening.
"q -退出预览页面和搜索的页面
"p - Like Enter but open file in a preview window.c-w可以切换, 这个最好用
"--------------------------------------------------------------------
nmap <Leader>fp :CtrlSF <c-r><c-w><CR>
"v选中  fv搜索
vmap <Leader>fv <Plug>CtrlSFVwordPath
" ft打开刚才搜索的预览页面
nnoremap <Leader>fvt :CtrlSFToggle<CR>
"--------------------------------------------------------------------
"}

"incsearch， 当前文件搜索 {
"--------------------------------------------------------------------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"--------------------------------------------------------------------
"}


"a.vim 头文件切换	{
"--------------------------------------------------------------------
map <Leader>a :A<Cr>
"--------------------------------------------------------------------
"}


"YouCompleteMe		{
"--------------------------------------------------------------------
"nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"insert 模式不想匹配，不知道什么快捷键
"inoremap <leader>; <C-x><C-o>
"--------------------------------------------------------------------
"}

"YCM-Generator		{
"用法：重新生成ycm的索引，辅助工具
"--------------------------------------------------------------------
"./config_gen.py PROJECT_DIRECTORY
"--------------------------------------------------------------------
"}


"nerdcommenter		{
"--------------------------------------------------------------------
"<Leader>cc	注释
"<Leader>cu	取消注释
"<Leader>cA	跳转到该行结尾添加注释，并进入编辑模式
"--------------------------------------------------------------------
"}

"vim-clang-format	{
"--------------------------------------------------------------------
" map to <Leader>cf in C++ code
"autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
"autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
"autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting Toggle:
"nmap <Leader>ct :ClangFormatAutoToggle<CR>
"--------------------------------------------------------------------
"}


"vim-protodef		{

"}

"DoxygenToolkit		{
"将光标放在 function 或者 class 的名字所在的一行，然后输入命令
"--------------------------------------------------------------------
map <F12> <Esc>:Dox<cr>
"--------------------------------------------------------------------
"}


"headerGatesAdd		{

"}

"trailing-whitespace	{
"空格修复
map <leader><space> :FixWhitespace<cr>
" Full Fucking Window ^M ending line file!
nnoremap <leader>m :%s////g
"}


" needtree		{
"--------------------------------------------------------------------
map <F3> :NERDTreeToggle<CR>
"--------------------------------------------------------------------
"}


"nerdtree-git-plugin	{

"}

"tagbar 函数列表	{
"--------------------------------------------------------------------
inoremap <F4> <esc>:TagbarToggle<cr>
nnoremap <F4> :TagbarToggle<cr>
"--------------------------------------------------------------------
"}


"vim-buftabline	{
":set hidden隐藏buffer
":ls 显示所有的buffer
"--------------------------------------------------------------------
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprev<cr>
"--------------------------------------------------------------------
"}

"undotree			{
"j/k  - move between undo states
"p/P - show the diff between your current / replay the diff
"--------------------------------------------------------------------
nnoremap <F5> :UndotreeToggle<cr>
"--------------------------------------------------------------------


"vim-startify	{

"}


"rename		{
"使用方法
":rename[!] filename
"}





"vim-multiple-cursors	{
"<C-j>选中第一个，再一次下一个
"<C-k>上一个
"<C-x>跳一个
"Esc 跳出模式
"--------------------------------------------------------------------
let g:multi_cursor_next_key='<C-j>'
let g:multi_cursor_prev_key='<C-k>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"--------------------------------------------------------------------
"}


"vim-easymotion		{
"map <Leader>h <Plug>(easymotion-linebackward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大,下面貌似不起作用
"map <Leader><leader>. <Plug>(easymotion-repeat)
"}


"vim-smooth-scroll  {
"Ctrl f/b u/d    页面平滑 前后/半全
"--------------------------------------------------------------------
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"--------------------------------------------------------------------
"}


"vim-expand-region	{
"v 选中一个单词
"--------------------------------------------------------------------
map v <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
"--------------------------------------------------------------------
"}


"delimitMate	{

"}


"vim-cursorword	{

"}

"syntastic	{
"开启检查
"--------------------------------------------------------------------
"nnoremap <Leader>sy :SyntasticToggleMode<CR>
"--------------------------------------------------------------------
"}

"mark		{
"\m 高亮或反高亮一个单词
"\n 清除当前的单词高亮(光标处)若光标处无高亮的单词就清除所有的单词高亮显示
"\r 按照输入的正则表达式高亮单词
"\* 跳转到当前高亮的下一个单词
"\# 跳转到当前高亮的上一个单词
"\/ 跳转到任一下一个高亮单词
"/? 跳转到任一上一高亮单词
" -----------------------------------------------------------------------------
"  "   不用 /functionname 进行匹配了
"  "   Move to the first match (ggn), last (GN), next (n) or previous (N) as
"  usual.
"  "   F8 ,直接高亮，n, 下一个。N，上一个，enter，直接取消高亮
"  "
"  ----------------------------------------------------------------------------
nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap <S-F8> :nohlsearch<CR><CR>

"}


" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
"" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()


"rainbow	{

"}

"vim-abolish	{
"快速字符串替换
"%s/facility/building/g
"}


"vim-easy-align  {
"ga*=  =对齐
"--------------------------------------------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"vipga=
"
"    visual-select inner paragraph
"    Start EasyAlign command (ga)
"    Align around =

"gaip=
"    Start EasyAlign command (ga) for inner paragraph
"    Align around =
"--------------------------------------------------------------------
"}

"goyo只显示代码，其他无关的不显示
"nnoremap <Leader>gy :Goyo<CR>


"vim-move	{
"--------------------------------------------------------------------
"<A-k>   Move current line/selection up
"<A-j>   Move current line/selection down
"--------------------------------------------------------------------
"}


"vim-gitgutter	{
"]c	git的下一修改点
"]c	git的上一修改点
"}


" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"zc 折叠命令
nnoremap zc @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>


"增加空格
nnoremap <silent> zj o<ESC>k
nnoremap <silent> zk O<ESC>j



" TabLine Tab configure KeyFire
"nnoremap <leader>tn :tabnew<CR>
"nnoremap <leader>tj :tabnext<CR>
"nnoremap <leader>tk :tabprevious<CR>
"nnoremap <leader>tc :tabclose<CR>


"copy paste
"noremap <C-c>  "+y
"nnoremap <C-v> <ESC>"+gpa
"cnoremap <C-v> <C-R>+

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

"save quit
"inoremap <C-s> : w<cr>
"nnoremap <C-s> : w<cr>






" Split faster
nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>



" ------------翻页-----------------
" ctrl-f ctrl-b 一页
" ctrl-d ctlr-u 半页
" ctrl-e ctrl-y 一行
" zz 让光标所杂的行居屏幕中央，ZZ退出
" zt 让光标所杂的行居屏幕最上一行 t=top
" zb 让光标所杂的行居屏幕最下一行 b=bottom

" ---------- 窗口切换 ----------
" Ctrl + w + h/j/k/l		--normal模式下窗口坐下右上切换       [插入模式]
" map <C-h> : <C-w>H

" ---------- 搜索命令 ----------
"
" #				--向前搜索当前光标所在字符
" *				--向后搜索当前光标所在字符
" ?				--向前搜索
" /				--向后搜索

" %				--结对符志坚跳转




" ---------- 文本操作 ----------
" dw				--删除后面 [包括空格]
" de				--删除后面 [不包括空格]
" db				--删除前面与空格间的字符
" d0				--删除当前到行首的字符 [包括所有空格]
" d^				--删除前面到行首的字符 [不包括空格]
" d$				--删除到行尾的字符
" dd				--删除一行
" diw				--删除一个分割符(空格)之间的内容，不含后分割符
" daw				--删除一个分割符(空格)之间的内容，含后分割符
" dt字符			--删除本行内容，直到遇到第一个指定字符 [不包括该字符]
" df字符			--删除本行内容，直到遇到第一个指定字符 [包括该字符]
" ---------- cyv命令和d命令一样 ----------
" dw de db d0 d^ d$ dd diw daw dt df --删除
" cw ce cb c0 c^ c$ cc ciw caw ct cf --删除并进入插入模式
" yw ye yb y0 y^ y$ yy yiw yaw yt yf --复制
" vw ve vb v0 v^ v$ vv viw vaw vt vf --选中



" ---------- 代码折叠 ----------
"
" zc                         	--折叠
" zC                         	--对所在范围内所有嵌套的折叠点进行折叠
" zo                         	--展开折叠
" zO                         	--对所在范围内所有嵌套的折叠点展开
" [z                         	--到当前打开的折叠的开始处
" ]z                         	--到当前打开的折叠的末尾处
" zj                         	--向下移动到后一个折叠的开始处
" zk                         	--向上移动到前一个折叠的结束处




" ---------- 格式化命令 ----------
"
" ==                         --缩进当前行
" =G                         --缩进直到文件结尾
" gg=G                       --缩进整个文件
" 行号G=行号G                --缩进指定区间

" u [小写]                   --单步复原               [非插入模式]
" U [大写]                   --整行复原               [非插入模式]
" Ctrl + r                   --反撤消                 [非插入模式]

"Alt hjkl 在插入模式下移动位置
" Command mode shortcut
cnoremap <M-h> <left>
cnoremap <M-j> <Down>
cnoremap <M-k> <Up>
cnoremap <M-l> <Right>
cnoremap <M-d> <Delete>


" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null
" Move to the start of line
nnoremap H ^
" Move to the end of line
nnoremap L $
"复制到一行的最后一个字符
nnoremap Y y$
"两次v退出v模式
vnoremap v <Esc>

"正常模式下enter等于输入:
nnoremap <CR> :

" Quit normal mode
nnoremap <Leader>q  :q<CR>
nnoremap <Leader>Q  :qa!<CR>
"进入shell命令模式下
map <Leader>s :shell<CR>

" jk | escaping
inoremap jj <Esc>
inoremap jk <Esc>
cnoremap jj <C-c>
cnoremap jk <C-c>


" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" Treat long lines as break lines (useful when moving around in them)
nmap j gj
nmap k gk
vmap j gj
vmap k gk
" Toggle pastemode
"nnoremap <Leader>tp :setlocal paste!<CR>



color space-vim-dark


"==================== KeyFire Setting End =========================
