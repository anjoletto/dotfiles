" ---------------------------------------------------------------------------- "
"  common configuration for all file types
" ---------------------------------------------------------------------------- "
syntax enable             " syntax highlighting
set hidden                " keep buffers open
set wrap                  " wrap lines when off screen
set fileencoding=utf-8    " set encoding when writing
set encoding=utf-8        " set default encoding
set pumheight=5           " pop menu (completion) height
set ruler              		" always show ruler
set cmdheight=1           " lines to display messages
set iskeyword+=-          " treat dash separated words as a word text object
set mouse=a               " allows mouse
set splitbelow            " horizontal splits below
set splitright            " vertical splits to the right
set t_Co=256              " support 256 colors
set expandtab             " change tab to spaces
set tabstop=2             " number of spaces inserted by tabs
set shiftwidth=2          " number of spaces to use as indentation
set softtabstop=2         " number of spaces in editing operations
set smarttab              " move by `shiftwidth` in blank lines
set smartindent           " indent by file type
set laststatus=2          " always display status line
set numberwidth=4         " number of characters in line numbering
set relativenumber        " set relative numbering as default...
set number                " but show current line's line number
set cursorline            " highlight the current line
set background=dark       " set default background color
set showtabline=1         " show tab line when there is more than one file
set nobackup              " don't generate backup file
set nowritebackup         " don't write to backup file
set noswapfile            " don't generate swap file
set timeoutlen=500        " set time to complete mapped sequence
set formatoptions-=cro    " set auto formatting
set clipboard=unnamedplus " copy between vim and any GUI stuff
set autochdir             " change to file directory
set scrolloff=5           " keep some lines in top and bottom
set showmatch             " show matching (), [], {}, etc.
set nolist                " show any line break char
set colorcolumn=80        " show line at 80th char
set termguicolors
set conceallevel=0        " show all characters

" ---------------------------------------------------------------------------- "
" File type specific stuff
" ---------------------------------------------------------------------------- "
filetype plugin indent on      " configuration by file type

" ignore some file types when auto completing file names
set wildignore+=*.DS_Store,*.db                                  " apple
set wildignore+=*.exe,*.app                                      " executables
set wildignore+=*.o,*.pyc,*.class                                " coding
set wildignore+=*.aux,*.bbl,*.blg,*.loa,*.lof,*.toc,*.out,*.log  " latex
" ---------------------------------------------------------------------------- "

" ---------------------------------------------------------------------------- "
" netrw configuration
" ---------------------------------------------------------------------------- "
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=3
let g:netrw_winsize=20
let g:netrw_altv=4
" ---------------------------------------------------------------------------- "
