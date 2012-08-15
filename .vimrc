" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" folding
set foldmethod=indent
set foldlevel=99

" MiniBuffer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" CTags
let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" TaskList shortcuts
map <leader>td <Plug>TaskList
map <leader>P :TlistToggle<CR>

" Gundo
map <leader>g :GundoToggle<CR>

" highlighting
syntax on
filetype on
filetype plugin indent on
colorscheme wombat256

" pyflakes
let g:pyflakes_use_quickfix = 0

" Pep8 plugin
let g:pep8_map='<leader>8'

" omniCom
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" NERDTree
map <leader>n :NERDTreeToggle<CR>

" Refactoring and Go to definition
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Searching
nmap <leader>a <Esc>:Ack!

" Testing MakeGreen
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>

" PEP8
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

" virtualenv
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
