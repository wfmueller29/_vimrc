set number 
set relativenumber
set noerrorbells 
syntax on 
set nowrap 
set showmode 
filetype on 
filetype indent on   
set tabstop=4 
set expandtab 
set noswapfile 
set colorcolumn=80 
set scrolloff=8
set incsearch 
set wildmenu

" PLUGINS -------------------------------------------------------------------{{{ 
" add plugins 
call plug#begin('~/vimfiles/plugged') 

" Plug 'vim-pandoc/vim-pandoc' 
" Plug 'vim-pandoc/vim-pandoc-syntax' 
" Plug 'vim-pandoc/vim-rmarkdown' 
Plug 'NLKNguyen/papercolor-theme'   
" Plug 'ackyshake/VimCompletesMe' 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'karoliskoncevicius/vim-sendtowindow'
" Plug 'sainnhe/gruvbox-material' 
Plug 'tpope/vim-fugitive'

call plug#end()
" }}}

" MAPPINGS ------------------------------------------------------------------{{{
"
nnoremap <space>sr :vsplit<CR><C-w>w:terminal<space>R<CR><C-w>w:q!<CR>
"nnoremap <space>sr :vsplit<CR><C-w>w:terminal<space>R<CR>++curwin<CR>
" }}}

" VIMSCRIPT ------------------------------------------------------------------{{{
" This will enable code folding
" Use the marker method of folding
augroup filetype_vim
 autocmd!
 autocmd FileType vim setlocal foldmethod=marker
augroup END 

" autocmd vimenter * ++nested colorscheme gruvbox
" }}}

" STATUS LINE ----------------------------------------------------------------{{{

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline_left_sep = '>>' 
" let g:airline_right_sep = '<<'

" }}}

" set background=dark
" colorscheme gruvbox-material
set background=dark
set laststatus=2
colo PaperColor
hi ColorColumn ctermbg=grey guibg=grey

