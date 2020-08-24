function! s:check_ultisnips() abort
	if match(&runtimepath, 'ultisnips') != -1
		call health#report_ok('UltiSnips is installed')
	else
		call health#report_error('UltiSnips is not installed')
	endif	
endfunction

function! s:check_scvim_or_scnvim() abort
	if match(&runtimepath, 'scnvim') != -1
		call health#report_ok('scnvim is installed')
	elseif	match(&runtimepath, 'scvim') != -1
		call health#report_ok('scvim is installed')
	else
		call health#report_error('No SuperCollider plugin is installed. Consider installed scnvim or scvim')
	endif
endfunction

function! health#vim_supercollider_snippets#check() abort
	call health#report_start('vim-supercollider-snippets')
	call s:check_ultisnips()
	call s:check_scvim_or_scnvim()
endfunction
