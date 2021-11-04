function! airline#extensions#tabline#formatters#nvimwebdevicons#format(bufnr, buffers) abort
  let originalFormatter = airline#extensions#tabline#formatters#{g:_nvimwebdevicons_airline_orig_formatter}#format(a:bufnr, a:buffers)
  return originalFormatter . ' ' .
    \ luaeval("require'nvim-web-devicons'.get_icon(_A[1], _A[2], {default=true})",
    \ [expand('#'.a:bufnr.':t'), expand('#'.a:bufnr.':e')])
endfunction
