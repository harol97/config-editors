call plug#begin("~/.local/share/nvim/plugged")
Plug 'https://github.com/tpope/vim-commentary'
Plug 'jremmen/vim-ripgrep'
Plug 'rktjmp/lush.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'https://github.com/projekt0n/github-nvim-theme'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'tpope/vim-fugitive'
Plug 'josuegaleas/jay'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'udalov/kotlin-vim'
Plug 'https://github.com/airblade/vim-gitgutter'

call plug#end()

source $HOME/.config/nvim/file.lua

syntax on


inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"git diff vin-githutter"
set updatetime=100

"teleescope
" Find files using Telescope command-line sugar.
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>
"telescop

" multicursor
nmap <C-c> <Cmd>\\\<CR>

nmap <silent> <C-c> <Plug>(coc-cursors-position)
"nmap <silent> <C-d> <Plug>(coc-cursors-word)
"xmap <silent> <C-d> <Plug>(coc-cursors-range)
nmap <leader>x  <Plug>(coc-cursors-operator)


"reload nvim
imap <F9> <C-O>:source $MYVIMRC<CR>
nmap <F9> :source $MYVIMRC<CR>
imap <F8> <C-O>:CocRestart<CR>
nmap <F8> :CocRestart<CR>

" autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

" coc configuration
" go to definition
nmap <silent> gd <Plug>(coc-definition)


" explorer
nmap <space>b <Cmd>CocCommand explorer<CR>
imap <c-b> <C-O>:CocCommand explorer<Enter><C-O>

nmap <space>a ggVG<CR>


" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)

" config nvim
filetype plugin indent on
set number
set showcmd
set relativenumber
set clipboard=unnamedplus
set encoding=UTF-8
set sw=2
set expandtab
set nowrap
autocmd FileType python setlocal sw=4 expandtab
autocmd FileType javascript setlocal sw=2 expandtab
autocmd FileType java setlocal sw=8 noexpandtab 
autocmd FileType xml setlocal sw=4 expandtab 
autocmd FileType javascriptreact setlocal sw=2 expandtab
autocmd FileType typescript setlocal sw=2 expandtab
autocmd FileType typescriptreact setlocal sw=2 expandtab
autocmd FileType html setlocal sw=2 expandtab
autocmd FileType htmldjango setlocal sw=4 expandtab
autocmd FileType scss setlocal sw=2 expandtab
autocmd FileType css setlocal sw=2 expandtab
" sudo apt-get install xclip
"
" clipboard

" now it is possible to paste many times over selected text
xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'

imap <Tab> <C-t>
imap <S-Tab> <C-d>
nmap <Tab> >>
nmap <S-Tab> <<
nmap ñ }

" themes
set termguicolors
set background=dark
let g:onedark_config = {
  \ 'style': 'darker',
  \ 'colors':{"bg0":"#16191d"}
\ }

colorscheme  onedark

" airline
" let g:airline_theme='wombat'
let g:airline_theme='zenburn'

" tmux-navigator
let g:tmux_navigator_no_mappings = 1
nmap <space>h :TmuxNavigateLeft<cr>
nmap <space>j :TmuxNavigateDown<cr>
nmap <space>k :TmuxNavigateUp<cr>
nmap <space>l :TmuxNavigateRight<cr>

" colors to compatible with breezy theme in nvim
hi CocErrorFloat guifg=#ffffff    " Error en rojo
hi CocWarningFloat guifg=#ffffff  " Advertencia en amarillo
hi CocInfoFloat guifg=#ffffff     " Información en azul
hi CocHintFloat guifg=#ffffff     " Sugerencias en verde
hi Delimiter guifg=#ffffff
" hi MatchParen ctermfg=white ctermbg=blue guifg=#ffffff guibg=#0000ff
" Puedes agregar colores específicos para corchetes y llaves

hi NormalFloat   guibg=#313538 guifg=#e8e9eb  gui=NONE


" coc-python (for python2)
" coc-pyright (for python3)
" coc-pairs
" coc-explorer
" coc-html
" coc-tsserver
" coc-css
" coc-prettier
" coc-markdown-preview-enhanced
" coc-pydocstring
" coc-json
" nerd font -> FantasqueSansMono Nerd Font Mono

"sure XDG_CONFIG_HOME set export XDG_CONFIG_HOME="$HOME/.config"
"
