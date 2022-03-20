"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


au FileType qf call AdjustWindowHeight(10, 50)
function! AdjustWindowHeight(minheight, maxheight)
	exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

function! ToggleQuickfixList()
	for bufnum in map(filter(split(s:GetBufferList(), '\n'), 'v:val =~ "Quickfix List"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
		if bufwinnr(bufnum) != -1
			cclose
			return
		endif
	endfor
	let winnr = winnr()
	if exists("g:toggle_list_copen_command")
		exec(g:toggle_list_copen_command)
	else
		copen
	endif
	if winnr() != winnr
		wincmd p
	endif
endfunction

if !exists("g:toggle_list_no_mappings")
	nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
	nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coq functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! AllCoq()
    if(&ft=='coq')
        :let lines=line('$')
        :execute &lines"CoqNext"
    endif
endfunction

