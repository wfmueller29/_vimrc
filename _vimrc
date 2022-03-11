set number 
set relativenumber
set noerrorbells 
syntax on 
set nowrap 
set showmode 
filetype on 
filetype indent on   
set tabstop=4 
set shiftwidth=4 " autoindent on o
set expandtab "tab now is spaces 
set noswapfile " don't use swaps 
set colorcolumn=80 "make column 80 
set scrolloff=8 "start scroll 8 lines before
set incsearch "incremental search 
set wildmenu
set hidden "so i can move through buffers without saving

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
Plug 'sainnhe/gruvbox-material' 
Plug 'tpope/vim-fugitive'

call plug#end()
" }}}

" MAPPINGS ------------------------------------------------------------------{{{
"
let mapleader = " " 
" open an r terminal in the right window
nnoremap <leader>sr :vsplit<CR><C-w>w:terminal<space>R<CR><C-w>w:q!<CR>
" close the current buffer without closing the window
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Window Mappings
noremap <C-j> <C-W>j<C-W>_
noremap <C-k> <C-W>k<C-W>_
noremap <C-h> <C-W>h<C-W>|
noremap <C-l> <C-W>l<C-W>|

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

" GVIM  ------------------------------------------------------------------{{{
"
au GUIEnter * simalt ~x
if has("gui_running")
  " Set a nicer font.
  set guifont=Consolas:h11:cDEFAULT
  " Hide the toolbar.
  set guioptions-=T
endif
"  }}}

colorscheme gruvbox-material
set background=dark
set laststatus=2
" colo PaperColor
" hi ColorColumn ctermbg=grey guibg=grey

