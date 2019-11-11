" USAGE GUIDE

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'


let g:nvim_config_root = stdpath('config')



" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'junegunn/vim-easy-align'
Plug '~/.fzf'
call plug#end()

" Spaces and Tabs
set tabstop=4      " number of visual spaces per TAB
set softtabstop=4  " number of spaces in tab when editing
set shiftwidth=4   " number of spaces to use for autoindent
set expandtab      " tabs are space
set autoindent
set copyindent     " copy indent from previous line

" UI Config
" set number   " show line number

" Search
set incsearch   " search as characters are entered
set hlsearch    " highlight match
" set ignorecase  " ignore case when searching
set smartcase   " ignore case if search pattern is lower case, otherwise case sensitive

