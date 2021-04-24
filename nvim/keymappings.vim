" set leader key
"let g:mapleader = "\<space>"

" tab completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Explorer
nmap <C-e> :CocCommand explorer<CR>
nmap <C-f> :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

map <F1> <nop>

" copy and paste as other GUI app
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d

" move by visual line
nnoremap j gj
nnoremap k gk

" reselects after indentation
vnoremap > >gv
vnoremap < <gv

" tab navigation copying i3
noremap <leader>s :vnew<CR>
noremap <leader><S-s> :new<CR>

noremap <leader>c :tabnew<CR>
noremap <leader>q :tabclose<CR>
noremap <leader>p :tabprevious<CR>
noremap <leader>n :tabnext<CR>

noremap <leader><Tab> <C-w><C-r>
noremap <leader>f <C-w>T
