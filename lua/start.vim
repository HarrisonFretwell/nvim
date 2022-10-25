"let mapleader=","
"source $HOME/.config/nvim/vim-plug/plugins.vim
"" Tab shortcuts
"nnoremap ,t :tabnew<CR>
"nnoremap ,T :tabclose<CR>
"" Reload config
"nnoremap <leader>sv :source $MYVIMRC<CR> 


"" Keybinds
"vnoremap "hy:%s/<C-r>h//gc<left><left><left>
"noremap <leader>n :NERDTreeToggle<CR>
"" Telescope
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" Snipe
"map <leader><leader>f <Plug>(snipe-f)


"" Coc
"" nnoremap <silent> K :call CocAction('doHover')<CR>
"" nmap <silent> gd <Plug>(coc-definition)
"" nmap <silent> gy <Plug>(coc-type-definition)
"" nmap <silent> gr <Plug>(coc-references)
"" nmap <silent> [g <Plug>(coc-diagnostic-prev)
"" nmap <silent> ]g <Plug>(coc-diagnostic-next)
"" nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
"" nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
"" nmap <leader>do <Plug>(coc-codeaction)
"" nmap <leader>rn <Plug>(coc-rename)
"" noremap <C-G> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
"" inoremap <C-G> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
"" inoremap <silent><expr> <C-> coc#refresh()
"" Coc smartf
"" nmap f <Plug>(coc-smartf-forward)
"" nmap F <Plug>(coc-smartf-backward)
"" nmap ; <Plug>(coc-smartf-repeat)
""nmap , <Plug>(coc-smartf-repeat-opposite)

""augroup Smartf
""  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
""  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
""augroup end

"" Diffview
""nnoremap <leader>dd :DiffviewOpen<CR>
""nnoremap <leader>df :DiffviewFileHistory<CR>

"call plug#begin("~/.vim/plugged")
"    " Better Syntax Support
"  "  Plug 'sheerun/vim-polyglot'
"    " File Explorer
"    Plug 'scrooloose/NERDTree'
"    " Auto pairs for '(' '[' '{'
""    Plug 'jiangmiao/auto-pairs'
""    Plug 'github/copilot.vim'
"    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" "   Plug 'folke/trouble.nvim'
"    " Appearance
""    Plug 'neoclide/coc.nvim', {'branch': 'release'}
""    let g:coc_global_extensions = [
""        \ 'coc-tsserver'
""        \ ]
""    Plug 'vim-airline/vim-airline'
""    Plug 'jiangmiao/auto-pairs'
""    Plug 'ap/vim-css-color'
"    " Plug 'unblevable/quick-scope' 
"   " Plug 'easymotion/vim-easymotion'
"     Plug 'asvetliakov/vim-easymotion'
"    " Completion / linters / formatters / refactoring
""    Plug 'HerringtonDarkholme/yats.vim'
""    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
""    Plug 'leafgarland/typescript-vim'
""    Plug 'peitalin/vim-jsx-typescript'
""    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
""    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
"    Plug 'tpope/vim-surround'
""    Plug 'kyazdani42/nvim-web-devicons'
""    Plug 'wincent/ferret'
"    Plug 'tpope/vim-commentary'
"    Plug 'yangmillstheory/vim-snipe'
"    " Fuzzy Search
""    Plug 'nvim-telescope/telescope.nvim'
""    Plug 'nvim-lua/plenary.nvim'
"    " Git
""    Plug 'airblade/vim-gitgutter'
""    Plug 'tpope/vim-fugitive'
""    Plug 'sindrets/diffview.nvim'
"    " Themes
"   "Plug 'kvrohit/substrata.nvim'
"   "Plug 'elvessousa/sobrio'
"   "Plug 'cocopon/iceberg.vim'
"   "Plug 'drewtempelmeyer/palenight.vim'
"   "Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"    Plug 'arcticicestudio/nord-vim'
"    " More Appearance
""    Plug 'ryanoasis/vim-devicons'
"call plug#end()
"colorscheme nord
"" Options
"set background=dark
"set completeopt=noinsert,menuone,noselect
"set cursorline
"set hidden
"set inccommand=split
"set number
"set relativenumber
"set splitbelow splitright
"set title
"set wildmenu
"set t_Co=256
":set autochdir " Write new files to same dir as current buffer

"" True color if available
"let term_program=$TERM_PROGRAM
"" Autosave on write
"autocmd TextChanged,TextChangedI <buffer> silent write

"" Check for conflicts with Apple Terminal app
"if term_program !=? 'Apple_Terminal'
"    set termguicolors
"else
"    if $TERM !=? 'xterm-256color'
"        set termguicolors
"    endif
"endif
"" Italics
"let &t_ZH="\e[3m"
"let &t_ZR="\e[23m"
"" Airline options
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='nord'
"" File browser
"let NERDTreeShowBookmarks=1
"let NERDTreeShowHidden=1
"let NERDTreeChDirMode=2
"set guifont="MonoLisa Nerd Font"
"" Vscode plugin fixes
"highlight QuickScopePrimary guifg='#8877BE' gui=underline ctermfg=155 cterm=underline
"highlight QuickScopeSecondary guifg='#58757F' gui=underline ctermfg=81 cterm=underline

"lua << EOF
"-- require("trouble").setup {}
" require("nvim-treesitter.configs").setup {
"    ensure_installed = { "typescript", "javascript", "rust", "tsx"},
"    highlight = {
"            enable = true,
              
"        },
    
"    }
"EOF
