""""" General Neovim Settings ==================================================

""" Bindings ===================================================================

" Set <leader> key to space.
let mapleader = " "

" Add bindings to move between windows using cardinals.
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

""" Behavior ===================================================================

set encoding=utf-8

" No sound effects.
set noerrorbells

" Remove the need for back-ups and swap files by using an undo dir instead.
set noswapfile
set nobackup
set undodir=~/AppData/Local/nvim-data/undodir
set undofile

" By default, this value is 4000 (ms). Leads to noticeable delays and poor UX.
set updatetime=50

""" UI =========================================================================

" Give more space to display messages.
set cmdheight=2

" Show relative line number on left margin.
set relativenumber

" Enable True Color.
set termguicolors

" Changes background color after 80 characters.
" Note: This is a hack and results in adverse behavior such as search
" highlight background not rendering properly.
" However, I find this to be less obnoxious than a single column.
" Color is tailored to be subtle on Gruxbox Medium Dark.
""" let &colorcolumn=join(range(81,256), ',')

" Renders the 81st column at a different color.
set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=darkgrey

""" Spaces & Tabs ==============================================================

" Automatically indent each new line.
set autoindent

" Copy indent from previous line.
set copyindent

" Use spaces for tab.
set expandtab

" Number of spaces in tab when editing.
set softtabstop=4

" Number of spaces to use for autoindent.
set shiftwidth=4

" Number of visual spaces per tab.
set tabstop=4

""" Search =====================================================================

" Highlight match.
set hlsearch

" Search as characters are entered.
set incsearch

" Ignore case if search pattern is entirely lower case.
set smartcase

""""" Initialization Settings ==================================================

""" Plugins ====================================================================

call plug#begin('~/AppData/Local/nvim/plugged')

" Aesthetic.
Plug 'dkarter/bullets.vim'
Plug 'gruvbox-community/gruvbox'

" Utility.
Plug 'itchyny/lightline.vim'
Plug 'itspriddle/vim-shellcheck'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()

""""" Plugin Settings ==========================================================

""" Aesthetic ==================================================================

" gruvbox.
colorscheme gruvbox

" lightline.
let g:lightline = { 'colorscheme': 'jellybeans' }

" rainbow_parentheses.
let g:rainbow#max_level = 8

""" Utility ====================================================================

" Goyo.
let g:goyo_width  = 80

" netrw
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" ripGrep
" Allow ripGrep to find root of project and search from there..
if executable('rg')
    let g:rg_derive_root='true'
endif

""" Bindings ===================================================================

" netrw
" Open a new vertical window taking up 30% of the horizontal space.
nnoremap <leader>rw :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"" YouCompleteMe
"Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --rust-completer' }
"" Restart the server.
"nnoremap <silent> <Leader>ycmr :YcmCompleter RestartServer<CR>
"" GoTo will try to jump to the best location.
"nnoremap <silent> <Leader>goto :YcmCompleter GoTo<CR>
"" Semantic GoTo mappings.
"nnoremap <silent> <Leader>gtD :YcmCompleter GoToDeclaration<CR>
"nnoremap <silent> <Leader>gtd :YcmCompleter GoToDefinition<CR>
"nnoremap <silent> <Leader>gtr :YcmCompleter GoToReferences<CR>
"nnoremap <silent> <Leader>gti :YcmCompleter GoToImplementation<CR>
"nnoremap <silent> <Leader>gtf :YcmCompleter FixIt<CR>

" vim-easy-align.
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

