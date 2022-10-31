set number
set tabstop=2
set shiftwidth=2
set mouse=a
set autoindent
" Don't wrap lines
set wrap
"Highlight matching bracket
call plug#begin('~/.config/nvim/plugged')
	Plug 'junegunn/fzf.vim'
	Plug 'preservim/nerdtree'
	Plug 'morhetz/gruvbox'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'unkiwii/vim-nerdtree-sync'
	Plug 'joshdick/onedark.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'mattn/emmet-vim'
	Plug 'othree/html5.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc-tsserver'
	" css3 syntax highlight
	Plug 'hail2u/vim-css3-syntax'
	" highlight colors
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }


call plug#end()"Config Section

colorscheme gruvbox

" loading the plugin
let g:webdevicons_enable = 1
let g:nerdtree_sync_cursorline = 1
let NERDTreeShowHidden = 1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<cr>

" nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

nnoremap <silent> <C-d> :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
