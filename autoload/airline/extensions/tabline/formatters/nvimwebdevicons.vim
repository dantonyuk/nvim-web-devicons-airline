function! airline#extensions#tabline#formatters#nvimwebdevicons#format(bufnr, buffers) abort
  let originalFormatter = airline#extensions#tabline#formatters#{g:_nvimwebdevicons_airline_orig_formatter}#format(a:bufnr, a:buffers)
  return originalFormatter . ' ' . luaeval("require'nvim-web-devicons'.get_icon(vim.api.nvim_buf_get_name(_A[1]), vim.api.nvim_buf_get_option(_A[1], 'filetype'), {default=true})", [a:bufnr])
endfunction
