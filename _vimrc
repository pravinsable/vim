"Personal Settings.
"More to be added soon.
execute pathogen#infect()
filetype plugin indent on
syntax on


"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"Set Color Scheme and Font Options
colorscheme kolor
set guifont=Consolas:h12
"set line no, buffer, search, highlight, autoindent and more.
set number relativenumber
set hidden
set incsearch
set ignorecase
set smartcase
set showmatch
set autoindent
set ruler
set vb
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
set noswapfile

"set clipboard=unnamed
"vmap <C-c> "+yi
"vmap <C-x> "+c
"vmap <C-v> c<ESC>"+p
"map <C-a> <esc>ggVG<CR>
"imap <C-v> <C-r><C-o>+

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <C-@>  VG:norm@q<CR>
vnoremap <C-@>  :norm@q<CR>
nnoremap k gk
nnoremap j gj

" NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDTreeGlyphReadOnly = "RO"

let MRU_Max_Entries = 1000 

highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '?'
let g:bookmark_highlight_lines = 1


nnoremap <silent> <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR>

execute "set <A-x>=\ex"
noremap <A-x> <C-A>

source $VIMRUNTIME/mswin.vim
behave mswin

