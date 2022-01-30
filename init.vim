

" https://github.com/junegunn/vim-plug

set encoding=utf8

" Plugins ---- {{{
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'

Plug 'ntpeters/vim-better-whitespace'

Plug 'sainnhe/edge' " Colorscheme

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'

Plug 'ciaranm/detectindent'


" Telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

call plug#end()

" }}}


" Windows --------------- {{{
set shell=powershell.exe
" }}}

" Basic --------------- {{{

let mapleader = ","
inoremap jj <esc>
:tnoremap jj <C-\><C-n>


map <silent> <leader><cr> :noh<cr>
set mouse=ar


map <leader>w :w<cr>
let g:airline_powerline_fonts = 0

" Editing and sourcing the configuration
nnoremap <leader>fe :e $MYVIMRC<cr>
nnoremap <leader>fv :vsplit $MYVIMRC<cr>
nnoremap <leader>fs :source $MYVIMRC<cr>

" Open current files dir
nnoremap <leader>hh :<C-u>e %:h<cr>

nnoremap <leader>nn :NERDTreeFocus<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Telescope

nnoremap <space>f <cmd>Telescope find_files<CR>
nnoremap <space>b <cmd>Telescope buffers<CR>
nnoremap <space>g <cmd>Telescope live_grep<CR>
nnoremap <space>r <cmd>Telescope resume<CR>


set splitright
" New terminal in vsplit
nnoremap <leader>tt :vsplit +terminal<cr>

" New small terminal at the bottom
function OpenSmallTerminal()
  split +terminal
  wincmd J
  resize 10
endfunction
nnoremap <leader>th :call OpenSmallTerminal()<cr>


"colorscheme molokai
"or
" important!!
set termguicolors
" for dark version
set background=dark
" for light version
"set background=light
" the configuration options should be placed before `colorscheme edge`
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1

colorscheme edge
let g:airline_theme = 'edge'

syntax enable
set nocompatible
filetype on
" Lock cursor to center
set scrolloff=999

set hidden
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Ignore case when searching
set ignorecase

set showmatch
set nobackup
set nowb
set noswapfile
" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch
" Switch between the last two files
nnoremap <leader><leader> <C-^>
" Use spaces instead of tabs
"set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" }}}

" Git ---- {{{

nnoremap <leader>gs :Git<cr>
nnoremap <leader>gl :tabnew +Gclog<cr>
nnoremap <leader>gd :Gvdiffsplit<cr>

set updatetime=100

" }}}


" LSP ---- {{{

set completeopt=menu,menuone,noselect
lua require('lsp')

" }}}
