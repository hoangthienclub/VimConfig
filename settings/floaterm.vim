"let g:floaterm_keymap_new    = '<F8>'
"let g:floaterm_keymap_prev   = '<F9>'
"let g:floaterm_keymap_next   = '<F10>'
"let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_position = 'topright'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.6
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Set color
hi Floaterm guibg=Grey15
hi FloatermBorder guifg=Orange guibg=DarkGreen
"hi FloatermNC guibg=darkred


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal
nnoremap      <F8>    :FloatermNew<CR>
tnoremap      <F8>    <C-\><C-n>:FloatermNew<CR>

" Kill current terminal
nnoremap  	<F9> 		:FloatermKill<CR>:FloatermPrev<CR>
tnoremap  	<F9> 		<C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Navigation next and previous terminal
nnoremap  	<C-[> 		:FloatermNext<CR>
"tnoremap  	<C-[> 		<C-\><C-n>:FloatermNext<CR>
nnoremap  	<C-]> 		:FloatermPrev<CR>
"tnoremap  	<C-]> 		<C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap  	<F1> 		:FloatermToggle<CR>
tnoremap  	<F1> 		<C-\><C-n>:FloatermToggle<CR>

" Focus terminal
"nnoremap <silent> 	<leader>tf 		<C-\><C-n><C-W><Left>
"tnoremap <silent> 	<leader>tf 		<C-\><C-n><C-W><Left>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
"nnoremap   <F8>    :FloatermNew --position=bottomleft --height=0.8 --width=0.6 --title='Git' lazygit<CR>
