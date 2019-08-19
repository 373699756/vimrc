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

let mapleader="\<Space>"			"space 作为leader键
call plug#begin('~/.vim/plugged')

"vim风格颜色及默认配置
"apt-get install silversearcher-ag		" ag需要安装上面的插件
"Plug 'liuchengxu/vim-better-default'		" vim 默认配置
Plug 'liuchengxu/space-vim-dark'		" vim风格
Plug 'liuchengxu/eleline.vim'			" vim状态栏


" 搜索
Plug 'rking/ag.vim'	             			" 搜索比grep 快多
Plug 'ctrlpvim/ctrlp.vim'           			" 搜索文件名 可模糊匹配
Plug 'tacahiroy/ctrlp-funky'        			" 当前文件函数搜索
Plug 'dyng/ctrlsf.vim'              			" 工程中搜索
Plug 'haya14busa/incsearch.vim'				" /？直接搜索
Plug 'vim-scripts/a.vim'


" C++编辑的控件
Plug 'Valloric/YouCompleteMe'					" 自动补全
Plug 'jeaye/color_coded'					" C++语法高亮
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}		" 能生成color_coded和.ycm_extra_conf.py
Plug 'rhysd/vim-clang-format'					" C++的语言格式，编码的空格设置
Plug 'vim-scripts/DoxygenToolkit.vim'           		" 注释工具,模板
Plug 'vim-scripts/headerGatesAdd.vim'    			" 头文件自动加宏
Plug 'scrooloose/nerdcommenter'     				" 注释用的插件
Plug 'bronson/vim-trailing-whitespace'  			" 快速去行尾空格 [, + <Space>]
Plug 'jeffkreeftmeijer/vim-numbertoggle'            " normal 模式下相对行号，insert模式下绝对行号


" 工程界面
Plug 'scrooloose/nerdtree'	         	" 目录结果
Plug 'Xuyuanp/nerdtree-git-plugin'              " 目录git 修改状态
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	" 目录图标
Plug 'majutsushi/tagbar'			" 标签列表
Plug 'ap/vim-buftabline'            "buffer  Ctrl
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'			" 启动界面
Plug 'danro/rename.vim'                     	" 重命名当前文件


" 源码编辑的有效控件
Plug 'terryma/vim-multiple-cursors'     " 单词处于选中状态，可对选中状态的单词处理
"Plug 'easymotion/vim-easymotion'       " 快速移动，感觉不好使
Plug 'terryma/vim-smooth-scroll'        " 页面平滑滚动
Plug 'terryma/vim-expand-region'        " 区域快速选择
Plug 'Raimondi/delimitMate'    	 	" 自动补全单引号，双引号等
Plug 'itchyny/vim-cursorword'		" 相同字符下划线
Plug 'vim-syntastic/syntastic'		" 语法分析
"Plug 'vim-scripts/Mark'                         	" 高亮选中的单词
Plug 'kien/rainbow_parentheses.vim'		" 括号高亮匹配
Plug 'tpope/vim-abolish'		" 替换 编译多个相同的字符串
Plug 'junegunn/vim-easy-align'		" 对齐
"Plug 'tpope/vim-surround'		" 成对符号编辑 html用的比较多，C++可去掉
"Plug 'tpope/vim-repeat'
Plug 'matze/vim-move'			" 选中之后整体移动



Plug 'thinca/vim-quickrun'                  " 快速执行当前文件
Plug 'elzr/vim-json'
" git版本控制
Plug 'airblade/vim-gitgutter'


" @ Plug --- [ Code Format ]
"Plug 'uncrustify/uncrustify'					" C语言格式化变漂亮
"Plug 'derekwyatt/vim-protodef'          	" C++函数原型提示
"Plug 'junegunn/limelight.vim'          	" read 模式，使当前位置颜色高亮，其他位置黑暗，如果该插件使能
"Plug 'junegunn/goyo.vim'                "   write  mode  better
"Plug 'derekwyatt/vim-fswitch', { 'for': ['c', 'cpp'] }	" 头文件之间切换
"Plug 'tpope/vim-git'
"Plug 'gregsexton/gitv'		this is confire with mark
"Plug 'junegunn/vim-emoji'	""biao qing bao cha jian
"Plug 'guns/xterm-color-table.vim'
"Plug 'bruno-/vim-man'
"Plug 't9md/vim-quickhl'
"Plug 'tmux-Plugs/vim-tmux'
"Plug 'conformal/spectrwm'
"Plug 'vim-utils/vim-alt-mappings'
"Plug 'tpope/vim-dispatch'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-signify'
"Plug 'ryanoasis/vim-devicons'
" @ Plug --- [ ColorScheme ]
"Plug 'Lokaltog/vim-distinguished'
"Plug 'itchyny/landscape.vim'		"diff color high
"Plug 'junegunn/goyo.vim'			"only show code ,is not interrupt by other
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-repeat'
"Plug 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
"LeaderF-1.11.zip
"vim-endwise
"vim-dirdiff
"Plug 'DemonCloud/J'
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'vim-airline/vim-airline'
" get the cfg of aix https://github.com/DemonCloud/dotfile
call plug#end()
