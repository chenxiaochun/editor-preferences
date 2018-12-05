set ofu=syntaxcomplete#Complete
" Configuration file for vim

"Vundle Section Start
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 插件管理
Plugin 'VundleVim/Vundle.vim'

" 语法检查
Plugin 'scrooloose/syntastic'

" 代码格式化
Plugin 'w0rp/ale'

" 括号，引号自动配对
Plugin 'jiangmiao/auto-pairs'

" 黑色主题
Plugin 'tomasiser/vim-code-dark'

" 代码片段提示
" Plugin 'MarcWeber/vim-addon-mw-utils' 
" Plugin 'tomtom/tlib_vim' 
" Plugin 'garbas/vim-snipmate'

" mac下neovim支持python的办法: https://www.jianshu.com/p/f87ef103858a
" https://medium.com/@rahul11061995/autocomplete-in-vim-for-js-developer-698c6275e341
" Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

call vundle#end()
filetype plugin indent on
"Vundle Section End


let g:ale_fixers = ['eslint']
let g:ale_fix_on_save = 1
let g:ale_cache_executable_check_failures = 1
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
" let g:ale_sign_error = '✗'

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

" Start autocompletion after 4 chars
" let g:ycm_min_num_of_chars_for_completion = 4
" let g:ycm_min_num_identifier_candidate_chars = 4
" let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
" set completeopt-=preview
" let g:ycm_add_preview_to_completeopt = 0

let g:python3_host_prog = '/usr/local/bin/python3.7'


set modelines=0		" CVE-2007-2438
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set ts=4
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
set softtabstop=4
set ruler
set undolevels=1000	
set backspace=indent,eol,start	

colorscheme codedark
" colorscheme molokai

noremap <F2> :w<ENTER>

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END<Paste>

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
