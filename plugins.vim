" File              : plugins.vim
" Author            : Amar Lakshya <amar.lakshya@xaviers.edu.in>
" Date              : 31.03.2020
" Last Modified Date: 22.07.2020
" Last Modified By  : Amar Lakshya <amar.lakshya@protonmail.com>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGIN CONFIGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-header
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:header_field_author = 'Amar Lakshya'
let g:header_field_author_email = 'amar.lakshya@protonmail.com'
let g:header_auto_add_header = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 2

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
"let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

vmap <leader>cc :NERDCommToggleComment<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CoC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=194
set pumheight=20
set completeopt=menu,menuone
set shortmess+=c
"
" " Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" " GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <leader>rn <Plug>(coc-rename)
" nmap <leader>cl  <Plug>(coc-codelens-action)
nmap <leader>d :call <SID>show_documentation()<CR>
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>d :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction
augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType cpp,hpp setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

command! -nargs=0 Format :call CocActionAsync('format')

nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Numbertoggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-]> :set relativenumber!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" "Fzf preview
let g:fzf_preview_floating_window_rate = 0.6
let g:fzf_preview_use_dev_icons = 1

nnoremap <C-p> :FZF<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips and SuperTab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rust
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:racer_cmd = "/home/$USER/.cargo/bin/racer"
" let g:racer_experimental_completer = 1
" let g:racer_insert_paren = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Codi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap <F4> :Codi <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimtex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimtex_view_enabled=0
let g:vimtex_compiler_latexrun = {
            \ 'options' : [
                \   '-shell-escape' ,
                \   '-verbose' ,
                \   '-file-line-error',
                \   '-synctex=1' ,
                \   '-interaction=nonstopmode' ,
                \ ],
                \}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Asyncrun
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Night and Day
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nd_themes = [
            \ ['5:00', 'gruvbox-material',            'light' ],
            \ ['19:00', 'gruvbox-material',            'dark'  ],
            \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coq
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let  g:coqtail_nomap = 1
" au BufWrite *.v :call AllCoq()
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi! link RainbowLevel0 Constant
hi! link RainbowLevel1 Type
hi! link RainbowLevel2 Function
hi! link RainbowLevel3 String
hi! link RainbowLevel4 PreProc
hi! link RainbowLevel5 Statement
hi! link RainbowLevel6 Identifier
hi! link RainbowLevel7 Normal
hi! link RainbowLevel8 Comment


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_highlighting_cache = 1


let g:context_nvim_no_redraw = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Treesitter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
  },

  refactor = {
    highlight_current_scope = { enable = true },
  },
}
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell sitter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require('spellsitter').setup {
  -- Whether enabled, can be a list of filetypes, e.g. {'python', 'lua'}
  enable = true,
}
EOF


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
tnoremap <ESC> <C-\><C-n>
if has('win32') || has('win64')
    set shell=powershell.exe

endif
lua << EOF
vim.o.hidden = true
require('nvim-terminal').setup({
    window = {
        -- Do `:h :botright` for more information
        -- NOTE: width or height may not be applied in some "pos"
        position = 'botright',

        -- Do `:h split` for more information
        split = 'sp',

        -- Width of the terminal
        width = 50,

        -- Height of the terminal
        height = 15,
    },

    -- keymap to disable all the default keymaps
    disable_default_keymaps = false,

    -- keymap to toggle open and close terminal window
    toggle_keymap = '<leader>;',

    -- increase the window height by when you hit the keymap
    window_height_change_amount = 2,

    -- increase the window width by when you hit the keymap
    window_width_change_amount = 2,

    -- keymap to increase the window width
    increase_width_keymap = '<leader><leader>+',

    -- keymap to decrease the window width
    decrease_width_keymap = '<leader><leader>-',

    -- keymap to increase the window height
    increase_height_keymap = '<leader>+',

    -- keymap to decrease the window height
    decrease_height_keymap = '<leader>-',

    terminals = {
        -- keymaps to open nth terminal
        {keymap = '<leader>1'},
        {keymap = '<leader>2'},
        {keymap = '<leader>3'},
        {keymap = '<leader>4'},
        {keymap = '<leader>5'},
    },
})
EOF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => marks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require('marks').setup {
  default_mappings = true,
  builtin_marks = { ".", "<", ">", "^" },
  cyclic = true,
  force_write_shada = false,
  refresh_interval = 250,
  sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
  excluded_filetypes = {},
  bookmark_0 = {
    sign = "⚑",
    virt_text = "hello world"
  },
  mappings = {}
}
EOF
