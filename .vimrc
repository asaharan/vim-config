call plug#begin('~/.vim/plugged')

" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " For TypeScript, ESLint, Prettier
Plug 'preservim/nerdtree'  " File explorer
Plug 'github/copilot.vim'  " GitHub Copilot

call plug#end()

" Plugin configurations
" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" coc.nvim
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Other settings
syntax on
set number
set expandtab
set tabstop=2
set shiftwidth=2