" File              : init.vim
" Author            : Amar Lakshya <amar.lakshya@xaviers.edu.in>
" Date              : 31.03.2020
" Last Modified Date: 22.07.2020
" Last Modified By  : Amar Lakshya <amar.lakshya@protonmail.com>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Experience Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'dense-analysis/ale'

" Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 install.py --clangd-completer' } " Nothing is complete without You!
Plug 'metakirby5/codi.vim' " Python repl in buffer
Plug 'alpertuna/vim-header' " Adds header to files
Plug 'scrooloose/nerdcommenter' "Comment god
Plug 'Chiel92/vim-autoformat' "Formatting god
Plug 'SirVer/ultisnips' "Snippets engine
Plug 'honza/vim-snippets' " Snippets list

if has('nvim') " Cool completiion engine
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif


Plug 'machakann/vim-sandwich' " perform operations between pairs of symbols
Plug 'rstacruz/vim-closer' "Brackets god
"Plug 'prabirshrestha/async.vim'
Plug 'terryma/vim-multiple-cursors' " yep
Plug 'epheien/termdbg'
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ } " Main lsp plugin
Plug 'Shougo/echodoc.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'romgrk/barbar.nvim' " Buffer tabs

"Plug 'ervandew/supertab' "
Plug 'plasticboy/vim-markdown'
" Plug 'shime/vim-livedown'
Plug 'lervag/vimtex' "Latex support
Plug 'KabbAmine/zeavim.vim' "Zeal support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go support
Plug 'severin-lemaignan/vim-minimap'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Language parsing and syntax highlighting
"Plug 'wfxr/minimap.vim'

" Plug 'racer-rust/vim-racer'

"
" Functional stuff
" Haskell
Plug 'neovimhaskell/haskell-vim'
" Plug 'haskell/stylish-haskell'
Plug 'sebmaynard/vim-ligatures'
" Plug 'alx741/vim-hindent'

Plug 'whonore/Coqtail'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fun Stuff Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'TheSovietStorm/vim-radio'
" Plug 'ryot4/diary.vim'
Plug 'nightsense/night-and-day'
" Plug 'ActivityWatch/aw-watcher-vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Eye Candy Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Themes
Plug 'altercation/vim-colors-solarized'
"Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'homembaixinho/p5.vim'

call plug#end()
