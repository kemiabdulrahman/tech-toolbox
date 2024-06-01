:set number
:set relativenumber
:set autoindent
:set mouse=a
:set smarttab
:set softtabstop=4
set clipboard=unnamedplus

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/preservim/nerdtree'

Plug 'https://github.com/manzeloth/live-server'
Plug 'https://github.com/alvan/vim-closetag'
Plug 'cakebaker/scss-syntax.vim'


Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/ap/vim-css-color'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

set encoding=UTF-8

call plug#end()



:colorscheme jellybeans

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-i> :NERDTreeRefreshRoot<CR>
nmap <F8> :TagbarToggle<CR>


nnoremap ;b :ls<cr>:b<space>

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:UltiSnipsEditSplit="vertical"

autocmd BufwritePost *.scss silent! !cakebaker % > /dev/null
let g:sass_output_directory = 'css'


let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

:set completeopt-=preview

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
colorscheme gruvbox

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 smartindent
autocmd FileType vue setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 smartindent
autocmd FileType json setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 smartindent

xmap <silent> <F4>  <Plug>(coc-convert-snippet)


set pastetoggle=<F2>

:tnoremap <Esc> <C-\><C-n>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

