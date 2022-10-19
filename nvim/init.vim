call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'projekt0n/github-nvim-theme'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'ray-x/go.nvim'

call plug#end()
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() :
        \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" VimScript
colorscheme gruvbox
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let mapleader = ','
nnoremap <leader>ff <cmd>Telescope find_files<cr>
autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.formatting_sync(nil,500)
