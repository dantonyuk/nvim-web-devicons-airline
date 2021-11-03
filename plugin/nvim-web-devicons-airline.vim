if exists('g:loaded_devicons_airline') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

let g:nvim_web_devicons_airline = 1

let g:_nvimwebdevicons_airline_orig_formatter = get(g:, 'airline#extensions#tabline#formatter', 'default')
let g:airline#extensions#tabline#formatter = 'nvimwebdevicons'

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_devicons_airline = 1
