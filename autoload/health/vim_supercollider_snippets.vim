function! s:check_ultisnips() abort
	if match(&runtimepath, 'ultisnips')!=-1
		call health#report_ok('UltiSnips is installed')
	else
		call health#report_error('UltiSnips is not installed')
	endif	
endfunction

function! health#vim_supercollider_snippets#check() abort
	call health#report_start('vim-supercollider-snippets')
	call s:check_ultisnips()
endfunction
