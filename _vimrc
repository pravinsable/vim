"Personal Settings.
"More to be added soon.
execute pathogen#infect()
helptags ~/vimfiles/bundle/matchit/doc
filetype plugin indent on
syntax on

source $VIMRUNTIME/mswin.vim
behave mswin

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
set hlsearch
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


" NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDTreeGlyphReadOnly = "RO"

let MRU_Max_Entries = 1000 

highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'
let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 1

"set clipboard=unnamed
"vmap <C-c> "+yi
"vmap <C-x> "+c
"vmap <C-v> c<ESC>"+p
"map <C-a> <esc>ggVG<CR>
"imap <C-v> <C-r><C-o>+

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
vmap // y/<C-R>"<CR>
vmap <silent> //    y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR> 
nnoremap <C-@>  VG:norm@q<CR>
vnoremap <C-@>  :norm@q<CR>
nnoremap k gk
nnoremap j gj
nnoremap 0 g0
nnoremap ^ g^
nnoremap $ g$

nmap <Leader>bb <Plug>BookmarkToggle
nmap <Leader>ba <Plug>BookmarkAnnotate
nmap <Leader>bd <Plug>BookmarkClear
nmap <Leader>bl <Plug>BookmarkShowAll
nmap <Leader>bt <Plug>BookmarkToggle
nmap <Leader>bj <Plug>BookmarkNext
nmap <Leader>bk <Plug>BookmarkPrev
nmap <Leader>bx <Plug>BookmarkClear
nmap <Leader>kk <Plug>BookmarkMoveUp
nmap <Leader>jj <Plug>BookmarkMoveDown
nmap <Leader>bg <Plug>BookmarkMoveToLine

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" set cc=10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200

nnoremap <silent> <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR>

execute "set <A-x>=\ex"
noremap <A-x> <C-A>
nnoremap Q <C-q>
nnoremap <Space> :let @+=@"<CR>

augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

