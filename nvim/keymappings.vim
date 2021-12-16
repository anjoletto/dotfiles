": set leader key
let mapleader = ' '

" tab completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

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

noremap <leader>c :tabnew<CR>
noremap <leader>q :tabclose<CR>
noremap <leader>p :tabprevious<CR>
noremap <leader>n :tabnext<CR>

noremap <leader><Tab> <C-w><C-r>
noremap <leader>t <C-w>T
