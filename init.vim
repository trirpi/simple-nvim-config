call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'valloric/youcompleteme'
Plug 'nvie/vim-flake8'
Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'raimondi/delimitmate'
Plug 'vimjas/vim-python-pep8-indent'
call plug#end()

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" set backgrounds
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme onedark

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

" enable line numbers
set number

" go to different screen with ctrl JKLH
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remove trailing whitespace in python files on save
autocmd BufWritePre *.py :%s/\s\+$//e

" autoclose the preview window
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" all extra windows pop up at the bottom
set splitbelow


let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3'

" persistent undo
set undodir=~/.config/nvim/undodir
set undofile
