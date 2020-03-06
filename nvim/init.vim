" Basic conf
set hlsearch
set number
set incsearch
set smartindent
set autoindent
set linebreak
set showmatch
set showcmd
set expandtab
set list
set encoding=utf-8
set laststatus=2
set tabstop=2
set shiftwidth=2
set sidescroll=1
set inccommand=split
set cursorline
set mouse=a

" Persistent Undo
set undofile
set undodir=~/.vim/undodir

" Plug
call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTree', 'NERDTreeToggle' ] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf.vim'

Plug 'pangloss/vim-javascript',          { 'for': 'javascript' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'tpope/vim-markdown',               { 'for': 'markdown' }
Plug 'derekwyatt/vim-scala',             { 'for': 'scala' }
Plug 'neovimhaskell/haskell-vim',        { 'for': 'haskell' }
Plug 'wlangstroth/vim-racket',           { 'for': 'scheme' }

Plug 'fatih/vim-go',                     { 'for': 'go' }
Plug 'rust-lang/rust.vim',               { 'for': 'rust' }
Plug 'uiiaoo/java-syntax.vim',           { 'for': 'java'}

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'omaryoussef/civic-vim'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Maps
let g:mapleader=" "
noremap  <Leader>ev  :e $HOME/.config/nvim/init.vim<CR>
noremap  <Leader>sv  :source ~/.config/nvim/init.vim<cr>
noremap  <Leader>t   :NERDTreeToggle<CR>
noremap  <Leader>l   :set list!<CR>
noremap  <Leader>h   :set hlsearch!<CR>
noremap  <Leader>d   :bd<CR>
noremap  <Leader>c   "*y
noremap  <Leader>v   "*p
noremap  <c-f>       :Ag<space>
noremap  <c-p>       :Files<CR>
inoremap <C-c>       <Esc>


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Gui
set listchars=tab:•\ ,trail:•,extends:»,precedes:«
set showbreak=↪\
let g:airline_powerline_fonts = 1
set background=dark
set termguicolors
colorscheme base16-default-dark
" highlight Comment ctermfg=green
"let g:airline_theme='base16'

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
"set shortmess+=c
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


hi Whitespace ctermfg=96 guifg=#725972 guibg=NONE ctermbg=NONE
hi VertSplit  ctermfg=Black  guifg=Black guibg=NONE ctermbg=NONE
hi LineNr ctermbg=NONE guibg=NONE
hi SignColumn ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=103 ctermbg=236 guifg=#9a9aba guibg=#34323e guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=234 guifg=NONE guibg=#212026 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=60 guifg=NONE guibg=#5e5079 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=NONE ctermbg=60 guifg=NONE guibg=#5d4d7a guisp=NONE cterm=NONE gui=NONE
highlight GitGutterAdd ctermfg=22 guifg=#006000 ctermbg=NONE guibg=NONE
highlight GitGutterChange ctermfg=58 guifg=#5F6000 ctermbg=NONE guibg=NONE
highlight GitGutterDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE
highlight GitGutterChangeDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE

" Syntax checking and Language Protocol Settings
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++17 -stdlib=libc++'
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:syntastic_enable_racket_racket_checker=1

" let java_highlight_functions = 1
" let java_highlight_all = 1
highlight link JavaIdentifier NONE

