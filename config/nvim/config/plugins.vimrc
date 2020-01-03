""""" Plugin Settings ==========================================================

""" Aesthetic ==================================================================

" gruvbox
colorscheme gruvbox

" indentLine
let g:indentLine_char      = '▏'
let g:indentLine_color_gui = '#928374'

" lightline
let g:lightline = { 'colorscheme': 'jellybeans' }
set noshowmode

" rainbow_parentheses
let g:rainbow#max_level = 8

" vim-cpp-enhanced-highlight
let g:cpp_class_decl_highlight = 1

""" Utility ====================================================================

" Goyo
let g:goyo_width  = 80

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" nerdTree
let NERDTreeShowHidden            = 1
let g:NERDTreeDirArrowExpandable  = '→'
let g:NERDTreeDirArrowCollapsible = '↓'

map <C-n> :NERDTreeToggle<CR>

