" set ofu=syntaxcomplete#Complete
" Configuration file for vim

"Vundle Section Start
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 插件管理
Plugin 'VundleVim/Vundle.vim'

" 语法检查
" Plugin 'scrooloose/syntastic'

" 基于项目中的eslint配置格式化代码
Plugin 'w0rp/ale'

" 只是用来临时格式化某个文件，需要全局安装js-beautify
Plugin 'Chiel92/vim-autoformat'

" 括号，引号自动配对
Plugin 'jiangmiao/auto-pairs'

" 代码高亮主题
Plugin 'tomasiser/vim-code-dark'

" 代码片段提示
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Galooshi/vim-import-js'
" Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" https://medium.com/@rahul11061995/autocomplete-in-vim-for-js-developer-698c6275e341
" Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" 自动闭合标签
Plugin 'alvan/vim-closetag'

" 快速打开文件
Plugin 'kien/ctrlp.vim'

" git插件
Plugin 'tpope/vim-fugitive'

" Plugin 'ternjs/tern_for_vim'

" 自动在两边添加配对字符
Plugin 'tpope/vim-surround'

" 多行编辑
Plugin 'terryma/vim-multiple-cursors'

" 自动保存
" Plugin 'vim-scripts/vim-auto-save'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-obsession'

" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()
filetype plugin indent on
"Vundle Section End


let g:ale_fixers = ['eslint']
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_cache_executable_check_failures = 1
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
" let g:ale_sign_error = '✗'
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

highlight clear ALEErrorSign
highlight clear ALEWarningSign
" highlight ALEErrorSign ctermbg=green ctermfg=red
" highlight ALEWarningSign ctermbg=blue ctermfg=yellow
" highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
" highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
" let g:deoplete#enable_at_startup = 1

" 配置nvim的python路径
" mac下neovim支持python的办法: https://www.jianshu.com/p/f87ef103858a 
let g:python3_host_prog = '/usr/local/bin/python3.7'

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml,js'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

" 快速打开文件
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|DS_Store)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_use_caching = 0
let g:ctrlp_show_hidden = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':.'
let g:airline#extensions#tabline#fnamecollapse = 0
let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0

let g:codedark_term256 = 1

" let g:auto_save = 1 " 自动保存
" let g:auto_save_in_insert_mode = 0 " 在插入模式时，不进行自动保存

set modelines=0		" CVE-2007-2438
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set ts=2
syntax on
set number	
set linebreak
set showbreak=+++
set textwidth=100	
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase	
set incsearch
set autoindent
set shiftwidth=2	
set smartindent
set smarttab
set softtabstop=2
set ruler
set undolevels=1000	
set backspace=indent,eol,start	
set cursorline
set autoread
set path=./**
set mouse=a
set splitbelow " new window below
set splitright " new window right

colorscheme codedark
" colorscheme molokai

" set cursor color on paren
" https://stackoverflow.com/questions/10746750/set-vim-bracket-highlighting-colors
" color code see https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
hi MatchParen cterm=underline ctermbg=none ctermfg=010

noremap <F2> :w<ENTER>
noremap <F3> :q<ENTER>
noremap <F4> "+y<ENTER>
noremap <F5> "+p<ENTER>
noremap <F6> <c-z>
" noremap <c-j> <c-w>w
noremap <c-j> <c-d>
noremap <c-k> <c-u>
noremap <c-i> <c-w>w
noremap <C-L> <Esc>:tabnext<CR>
noremap <C-H> <Esc>:tabprevious<CR>

" augroup FiletypeGroup
"    autocmd!
"    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
" augroup END<Paste>

" Don't write backup file if vim is being called by "crontab -e"
" au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
" au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

