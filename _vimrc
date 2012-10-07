autocmd BufNewFile,BufRead *.jade set filetype=jade
autocmd BufNewFile,BufRead *.ejs set filetype=html
set nu
set expandtab
set cindent
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set modeline
set ls=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set filetype=on
set makeprg=nodelint
set backspace=indent,eol,start
set undofile
set undodir=/tmp
map <C-up> :tabr<cr>
map <C-down> :tabl<cr>
map <C-left> :tabp<cr>
map <C-right> :tabn<cr>
map <space> /*())(<cr>
cmap tn tabnew
cmap vs vsplit
cmap bu buffer
cmap ntt NERDTreeToggle
cmap ntf NERDTreeFind
nnoremap <f4> :buffers<CR>:buffer<Space>
syntax enable
filetype plugin off
nmap <C-x> :w<CR>
nmap <f5> :!jslint --var --eqeq --white --forin --color %<cr>
nmap <C-v> :w<CR>:make %<CR>:cw<CR>
nmap <f6> :!jshint %<cr>
nmap <cr> G
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []
