" File              : init.vim
" Author            : Amar Lakshya <amar.lakshya@xaviers.edu.in>
" Date              : 31.03.2020
" Last Modified Date: 31.03.2020
" Last Modified By  : Amar Lakshya <amar.lakshya@xaviers.edu.in>

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
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Experience Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'metakirby5/codi.vim'
Plug 'alpertuna/vim-header'
" Plug 'vim-scripts/a.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
"Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'ycm-core/YouCompleteMe', {'do' : './install.py --clang-completer --java-completer' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'machakann/vim-sandwich'
Plug 'rstacruz/vim-closer'
" Plug 'w0rp/ale'
"Plug 'Rykka/riv.vim'
"Plug 'racer-rust/vim-racer'
Plug 'dkprice/vim-easygrep'
Plug 'WolfgangMehner/bash-support'
Plug 'prabirshrestha/async.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'igankevich/mesonic'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete.vim'
"
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'xuhdev/vim-latex-live-preview'
" Plug 'vim-latex/vim-latex'
Plug 'lervag/vimtex'
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fun Stuff Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'TheSovietStorm/vim-radio'
" Plug 'ryot4/diary.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Eye Candy Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Themes
Plug 'NLKNguyen/papercolor-theme'
"Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
"Icons
Plug 'ryanoasis/vim-devicons'
call plug#end()
